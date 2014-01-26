import os


FILES_TO_LINK = {
    'any': (
            ('bundles.vim', '~/.bundles.vim'),
            ('vimrc', '~/.vimrc'),
        ),
}

def install(*args, **kwargs):
    os.system('git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle')
    print "Cloned vundle, installing plugins"
    os.system('vim -u ~/.bundles.vim +BundleInstall! +q')
