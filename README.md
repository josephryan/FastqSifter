# FastqSifter

## DESCRIPTION

I appreciate hearing about your experience with the program.

`FastqSifter` This program will take a FASTA sequence (e.g., mitochondrial genome sequence) and align a set of reads (left, right, and optionally unpaired) using bwa and then remove reads that align from the original set of reads.  It will optionally save the aligned reads as well.
=======
## AVAILABILITY

https://github.com/josephryan/FastqSifter (click the "Download ZIP" button at the bottom of the right column).

### DEPENDENCIES

General system tools:
- [Perl] (http://www.cpan.org/), comes with most operating systems

Additional package
- JFR-PerlModules  - https://github.com/josephryan/JFR-PerlModules

BWA
- http://bio-bwa.sourceforge.net/
- This is currently the only aligner that works with FastqSifter

## INSTALLATION

To install `FastqSifter` and documentation, type the following:

    perl Makefile.PL
    make
    sudo make install

If you do not have permission to install to the system see the following:

    http://www.perlmonks.org/index.pl?node_id=128077#permission

## RUN

    FastqSifter --out=PREFIX_FOR_OUTFILES --fasta=CONTAM_FASTA
       --left=LEFT_FASTQ --right=RIGHT_FASTQ [--unp=UNPAIRED_FASTQ]
       [--savereads] [--version] [--help]

## DOCUMENTATION

Documentation is embedded inside of `FastqSifter` in POD format and
can be viewed by running any of the following:

        FastqSifter --help
        perldoc FastqSifter
        man FastqSifter  # available after installation

## COPYRIGHT AND LICENSE

Copyright (C) 2015 Joseph F. Ryan

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program in the file LICENSE.  If not, see
http://www.gnu.org/licenses/.
