# 3bs (Beeneys Boring Build System)

A clean, opinionated &amp; simple build system for small to medium sized projects, written in C.
Allowing for easy dependency management and cross-platform building / testing.  

## To install  

    . Run sh .3bs/install in the root of the repo.  
    . Scaffold directories will be created.  
    . Internal unneeded files for 3bs are automatically stripped out for a leaner environment.  
    . If git is available, a git repository will be created for your convenvience.  

## 3bs Guide  

    Managing dependencies:

        . deps.json is where you notate dependencies e.g. {"gh":["Torvalds/Linux"],"git":["someurl"]}
        . When a dependency is installed with ```sh 3bs GetDependency``` Tool/DependencyHandler/DependencyName Transform() is called.  
            It is within Transform() that you write the code that handles the dependency ready for use.  
