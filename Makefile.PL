use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
              'NAME'            => 'Palm::Zetetic::Strip',
              'VERSION_FROM'    => 'lib/Palm/Zetetic/Strip.pm',
              'PREREQ_PM'       => {'Palm::PDB'     => '0'},
              'clean'           => {FILES   => "*.bak"},
              'realclean'       => {FILES   => "Palm-Zetetic-Strip-*.tar.gz"},
              );

package MY;

sub libscan
{
    my($self, $path) = @_;
    return '' if $path =~ /\bCVS\b/;
    return '' if $path =~ /~$/;
    return $path;
}
