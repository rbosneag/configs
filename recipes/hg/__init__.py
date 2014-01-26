import os
import re


FILES_TO_LINK = {
    'any': (
            ('hgignore', '~/.hgignore'),
        ),
}

def install(*args, **kwargs):
    src = open(os.path.join(os.path.dirname(__file__), 'hgrc.tpl'), 'r')
    content = src.read().decode("utf-8")
    src.close()
    for (key, value) in kwargs.items():
        content = content.replace('{{%s}}' % key, value)
    # clean unused tpl variables
    content = re.sub(r'\{\{[A-Z][A-Z_0-9]*\}\}', '', content)
    dest = open(os.path.expanduser('~/.hgrc'), 'w')
    dest.write(content.encode("utf-8"))
    dest.close()
