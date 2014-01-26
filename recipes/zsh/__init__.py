import os
import re
import sys


FILES_TO_LINK = {
    'macos': (
            ('mac_aliases', '~/.aliases'),
        ),
    'linux': (
            ('linux_aliases', '~/.aliases'),
        ),
    'any': (
            ('inputrc', '~/.inputrc'),
        ),
}


def install(*args, **kwargs):
    os.system('git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh')
    bindir = os.path.expanduser('~/bin')
    try:
        os.mkdir(bindir)
    except:
        print >>sys.stderr, "Trouble creating %s." % bindir
    else:
        print "Created empty %s." % bindir
    # add starter .paths file with ~/bin
    paths = os.path.expanduser('~/.paths')
    try:
        with open(paths, 'a') as f:
            f.write(bindir + '\n')
    except:
        print >>sys.stderr, "Trouble creating %s." % paths
    else:
        print "Created %s." % paths

    if kwargs['PLATFORM'] == 'linux':
        src = 'linux_zshrc.tpl'
    elif kwargs['PLATFORM'] == 'macos':
        src = 'mac_zshrc.tpl'
    src = open(os.path.join(os.path.dirname(__file__), src), 'r')
    content = src.read().decode("utf-8")
    src.close()
    for (key, value) in kwargs.items():
        content = content.replace('{{%s}}' % key, value)
    # clean unused tpl variables
    content = re.sub(r'\{\{[A-Z][A-Z_0-9]*\}\}', '', content)
    dest = open(os.path.expanduser('~/.zshrc'), 'w')
    dest.write(content.encode("utf-8"))
    dest.close()

    # set default
    print "Setting zsh as the default shell.."
    os.system('chsh -s `which zsh`')