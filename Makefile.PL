
use ExtUtils::MakeMaker;

WriteMakefile(NAME      => 'FastqSifter',
              AUTHOR    => 'Joseph Ryan <joseph.ryan@whitney.ufl.edu',
              VERSION   => '0.02',
              PREREQ_PM => { 'JFR::Fastq' => '.05' },
              EXE_FILES => ['FastqSifter']);

