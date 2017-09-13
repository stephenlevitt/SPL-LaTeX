# SPL-LaTeX
LaTeX style and class files for the Wits School of Electrical &amp; Information Engineering

## Master's Dissertation and PhD Thesis Style File
If you are writing up your dissertation/thesis in LaTeX, you should use the class file (`wits-eie-thesis.cls`) in the `dissertation-thesis` directory. It conforms to the faculty's style requirements (see the _Faculty Style Guide for Theses and Dissertations_ in the same directory).

The `dissertation-thesis` directory also contains an example dissertation in the `skeleton-msc-phd` sub-directory. This example has a top-level file called `main-doc` which includes the preamble, each chapter, and the appendices. It makes use of the `useful-packages` package which lists many additional packages that can be helpful in formatting your dissertation/thesis. Only the essential packages have been included to reduce dependencies while the rest have been commented out. Uncomment, and use, those that you require.

If you have any suggestions for improving the style file and/or example, please email me, or make a pull-request with your changes.

## Installing the Classes and Styles
In order to use the classes and styles in this repository, you will need to install them into your LaTeX system.

The two files you will need to "install" are:
- `useful-packages.sty`
- `wits-eie-thesis.cls`

###  MiKTeX on Windows
1.  Create a location you can copy the classes and styles to
    -  Windows 10: `C:\Users\<MyUser>\AppData\Local\MiKTeK\<MiKTeX Version>\tex\latex\local`
    -  Windows Vista/7: `C:\Users\<MyUser>\texmf\tex\latex\local\`
2.  Create a `Root` in MikTex
    1.  Open the MikTex Settings (as Admin)
    2.  Select the `Roots` tab
    3.  Select the folder `C:\Users\<MyUser>\AppData\Local\MiKTex\<MiKTeX Version>`
    4.  Click Apply
3.  Tell MiKTeX to refresh it's filename database
    1.  Open the MikTex Settings (as Admin)
    2.  Select the `General` tab
    3.  Click `Refresh FNDB`

You should now be able to use the class for your thesis.