PORT := "4313"

serve:
    hugo server --port {{PORT}}

build:
    hugo
