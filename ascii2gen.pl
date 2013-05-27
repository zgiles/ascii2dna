#!/opt/local/bin/perl

my %gen = (
	'a' => 'AAA',
	'b' => 'AAT',
	'c' => 'CCC',
	'd' => 'AAC',
	'e' => 'AAG',
	'f' => 'TTG',
	'g' => 'GGG',
	'h' => 'TTA',
	'i' => 'TTC',
	'j' => 'CCT',
	'k' => 'CCA',
	'l' => 'CCG',
	'm' => 'GGT',
	'n' => 'GGA',
	'o' => 'GGC',
	'p' => 'ATA',
	'q' => 'ATC',
	'r' => 'ATT',
	's' => 'ATG',
	't' => 'TTT',
	'u' => 'TAT',
	'v' => 'TAG',
	'w' => 'TAC',
	'x' => 'TAA',
	'y' => 'CTC',
	'z' => 'CTT',
	'0' => 'CTA',
	'1' => 'CTG',
	'2' => 'GTG',
	'3' => 'GTT',
	'4' => 'GTA',
	'5' => 'GTC',
	'6' => 'ACA',
	'7' => 'ACC',
	'8' => 'ACT',
	'9' => 'ACG',
	' ' => 'TCT',
	"\n" => 'TCG',
	"\r" => 'TCG',
	'.' => 'TCA',
	',' => 'TCC',
	'?' => 'CAC',
	'!' => 'CAT',
	"\'" => 'CAA',
	"’" => 'CAA',
	'"' => 'CAG',
	'(' => 'GCG',
	')' => 'GCG',
	'-' => 'GCT',
	'&' => 'GCA',
	'@' => 'GCC',
	'#' => 'AGA',
	'$' => 'AGC',
	'%' => 'AGT',
	'*' => 'AGG',
	"\\" => 'TGT',
	'[' => 'TGG',
	']' => 'TGG',
	'/' => 'TGA',
	'`' => 'TGC',
	':' => 'CGC',
	';' => 'CGT',
#	'' => 'CGA',	
#	'' => 'CGG',
	'=' => 'GAG',
	'>' => 'GAT',
	'+' => ''
#	'' => 'GAA',
#	'' => 'GAC',
);

open MYFILE, "input.txt" or die "could not open input.txt";
while(<MYFILE>) {
    #split line in a char array
    @chars = split //;
    #loop char by char
    for $char(@chars) {
	if (defined($gen{lc($char)})) {
		print $gen{lc($char)}; 
	} else {
		# print characters we couldnt translate so we notice them
		print "__${char}__";
	}
    }
}
close MYFILE;
print "\n";
