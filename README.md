# FastqSifter

## DESCRIPTION

I appreciate hearing about your experience with the program.

`FastqSifter` accepts a FASTA sequence (e.g., mitochondrial genome, symbiont genome , potential contaminant genome), will align a set of reads (left, right, and optionally unpaired) to this sequence using bwa, then remove reads that align from the original set of reads, and optionally save the aligned reads to a separate FASTQ file.

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
- bwa should be in your path 
  (or you can change the $BWA variable to point to the full path to bwa)

## INSTALLATION

To install `FastqSifter` and documentation, type the following:

    perl Makefile.PL
    make
    sudo make install

If you do not have permission to install to the system see the following:

    http://www.perlmonks.org/index.pl?node_id=128077#permission

## RUN

    FastqSifter --out=PREFIX_FOR_OUTFILES --fasta=CONTAM_FASTA
       --left=LEFT_FASTQ --right=RIGHT_FASTQ [--threads=NUM_THREADS]
       [--unp=UNPAIRED_FASTQ] [--savereads] [--version] [--help]

## DOCUMENTATION

Documentation is embedded inside of `FastqSifter` in POD format and
can be viewed by running any of the following (it is also below):

        FastqSifter --help
        perldoc FastqSifter
        man FastqSifter  # available after installation

**FastqSifter** - Separate contaminating reads from FASTQ files 

# AUTHOR

Joseph F. Ryan <joseph.ryan@whitney.ufl.edu>

# SYNOPSIS

FastqSifter --out=PREFIX\_FOR\_OUTFILES --fasta=CONTAM\_FASTA {--left=LEFT\_FASTQ --right=RIGHT\_FASTQ and/or --unp=UNPAIRED\_FASTQ} \[--threads=NUM\_THREADS\] \[--savereads\] \[--version\] \[--help\]

# DESCRIPTION

This program will take a FASTA sequence (e.g., mitochondrial genome sequence) and align a set of reads (left and right, and/or unpaired) using bwa and then remove reads that align from the original set of reads.  It will optionally save the aligned reads as well.

requires: bwa, JFR::Fastq

# BUGS

Please report them to <joseph.ryan@whitney.ufl.edu>

# OPTIONS

- **--out**

    Prefix for outfiles. Filtered reads will have the word "filtered" in the name (e.g. blarg.filtered.A.fq if "blarg" was the prefix)

- **--FASTA**

    Contamination sequence (e.g., MT genome of species, Human genome)

- **--left**

    Left reads in fastq format (can be compressed with gz suffix or not)

- **--right**

    Right reads in fastq format (can be compressed with gz suffix or not)

- **--unp**

    Unpaired reads in fastq format (can be compressed with gz suffix or not)
    optional

- **--savereads**

    Optionally create a FASTQ file with all reads that match the provided FASTA file. These reads will have \*matched\* in the name (e.g., blarg.matched.A.fq)

- **--version**

    Print the program version and exit

- **--help**

    Print this manual

# COPYRIGHT

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
along with this program.  If not, see &lt;http://www.gnu.org/licenses/>.
