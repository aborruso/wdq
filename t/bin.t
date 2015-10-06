use v5.14;
use Test::More;
use Test::Output;

my $exit;
sub qid { system($^X, './bin/wdq', @_); $exit = $? >> 8 }
sub slurp { local (@ARGV,$/) = shift; <> }

foreach my $opt (qw(--help -h -?) {
    output_like { qid $opt } qr/^wdq \[OPTIONS\] < query/, qr/^$/, 'help';
    is $exit, 0;
}

foreach my $opt (qw(--version -V) {
    output_like { qid $opt } qr/^wdq \d+\.\d+\.\d+/, qr/^$/, 'version';
    is $exit, 0;
}

output_like { qid '--foo' } qr/^$/, qr/^Unknown option: foo/, 'unknown option';
is $exit, 1;

stderr_is { qid '--query', '{ ?s ?p x:foo }' }
    "Invalid SPARQL query!\n", "validate SPARQL";
is $exit, 1;

stderr_is { qid '--format', 'x' }
    "Unknown format: x\n", "unknown format";
is $exit, 1;

stdout_is { qid qw(-nq t/examples/stackexchange.query) }
    slurp('t/examples/stackexchange.sparql'), 'no-execute';

done_testing;
