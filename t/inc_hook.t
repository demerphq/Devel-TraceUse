use Test::More tests => 2;

my @inc_copy = @INC;

require Devel::TraceUse;

is( @INC, @inc_copy + 1, 'loading Devel::TraceUse should add a hook to @INC' );
is(
    $INC[0],
    \&Devel::TraceUse::trace_use,
    'the first @INC item is the expected coderef'
);
