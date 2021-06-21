Currently, I am trying to use [AntiDoc](https://gitlab.com/wovalab/open-source/labview-doc-generator) and [AntiDoc CLI](https://gitlab.com/wovalab/open-source/cli-for-antidoc). The CLI seems to be more customizable and automatable. However, it generates an Asciidoc (\*.adoc) file instead of HTML files. An Asciidoctor file requires a specific plugin to view in a web browser, so this may not be feasible unless I can find an asciidoctor converter.

I used
```PowerShell
g-cli --lv-ver 2020 Antidoc -- -pp "Z:\business\research\rxn_rover\Reaction Rover\Reaction Rover.lvproj" -t "Reaction Rover Documentation" -out "Z:\business\research\rxn_rover\Reaction Rover\documentation\functions\rxn_rover_documentation.adoc"
```

There does appear to be a [GitLab/GitHub method to render this documentation](https://gitlab.com/wovalab/open-source/labview-project-documentation-with-antidoc-demo), but I was hoping to incorporate this into Sphinx.

[Asciidoctor](https://docs.asciidoctor.org/asciidoctor/latest/install/) was installed to try to convert between adoc and HTML. This was installed using `gem install asciidoctor` with RubyGem and has a CLI to work with. 

I used
```PowerShell
asciidoctor -b html5 rxn_rover_documentation.adoc
```
