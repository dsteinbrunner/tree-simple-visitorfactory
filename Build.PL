use strict;
use warnings;

use Module::Build;

Module::Build -> new
(
	module_name    => 'Tree::Simple::VisitorFactory',
	license        => 'perl',
	dist_abstract  => 'A factory object for dispensing Visitor objects',
	dist_author    => 'Stevan Little <stevan@cpan.org>',
	build_requires =>
	{
		'Test::Exception' => 0.15,
		'Test::More'      => 0.47,
#		'Test::Pod'       => 1.45, # Make it optional. See t/pod.t.
	},
	configure_requires =>
	{
		'Module::Build' => 0.3800,
	},
	requires =>
	{
		'File::Spec'   => 0.60,
		'Scalar::Util' => 1.10,
		'Tree::Simple' => 1.12,
		'strict'       => 0,
		'warnings'     => 0,
	},
) -> create_build_script();
