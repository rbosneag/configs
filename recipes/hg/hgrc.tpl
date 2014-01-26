[ui]
username = {{USERNAME}}
merge = internal:merge
ignore = ~/.hgignore

[defaults]
qnew = -Ue
bzexport = -e
diff = -pU8
qdiff = -pU8
qseries = -sv

[extensions]
mq =
color =
pager =
{{EXTENSIONS}}

progress =
record =
convert =

[diff]
git = 1
showfunc = 1
unified = 8

[hooks]
post-push = hg phase --force --draft "mq()"

{{EXTRA}}
