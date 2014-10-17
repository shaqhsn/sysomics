sub geneFinder{
    my ($gene_name,$locustag,$organism_Name);
    my ($refSeqID) = @_;
    my  $factoryID = Bio::DB::EUtilities->new(-eutil => 'efetch',
					      -db =>'protein',
					      -rettype=> 'gb',
					      -email=> 'shaq.hsn@gmail.com',
					      -id=> $refSeqID); 
    my $newfile="$refSeqID.gbk";
    $factoryID->get_Response(-file =>$newfile);
    my $seqio_object = Bio::SeqIO->new(-file =>"$newfile");
    while ( my $seq_object=$seqio_object->next_seq){
		my  $definition= $seq_object->desc ;
		# print $definition."\n";
		my    $sequence=$seq_object->seq;
		for my $feat_object ($seq_object->get_SeqFeatures) {
	    	my $sequence_string = $feat_object->spliced_seq->seq;
	    	# Save the values in variables
	    	my $GI          = 'not found';
	    	my $PID         = 'not found';
	    	my $gene        = 'not found';
	    	my $product     = 'not found';
	    	my $locus_tag   = 'not found';
	    	my $organism = 'not found';
	    	if ($feat_object->primary_tag eq "CDS"){
			# Get the notes of each character
				for my $tag ($feat_object->get_all_tags) {
			    	if ($tag eq 'db_xref'){
						for my $value ($feat_object->get_tag_values($tag)) {
					    	if ($value =~ /GI:(\d+)/){
								$GI = $1;
			    			}
						}
		    		}elsif ($tag eq 'protein_id'){
						for my $value ($feat_object->get_tag_values($tag)){
			    			if ($value =~ /(.+)/){
								$PID = $1;
			    			}	
						}
		    		} elsif ($tag eq 'gene'){
						for my $value ($feat_object->get_tag_values($tag)) {
			    			if ($value =~ /(.+)/){
								$gene = $1;
			    			}
						}
		    		} elsif ($tag eq 'product'){
						for my $value ($feat_object->get_tag_values($tag)) {
			    			if ($value =~ /(.+)/){
								$product = $1;
			    			}
						}
		    		} elsif ($tag eq 'organism'){
						for my $value ($feat_object->get_tag_values($tag)) {
			    			if ($value =~ /(.+)/){
							$organism = $1;
			    			}
						}
		    		} elsif ($tag eq 'locus_tag'){
						for my $value ($feat_object->get_tag_values($tag)) {
			    			if ($value =~ /(.+)/){
								$locus_tag = $1;
			    		}
					}
		    	}   
			}
	        
	        	# Print out the variables
				if ($gene  ne 'not found'){
		    	$gene_name=$gene;
				}
				else{
		    		$gene_name="GI:".$refSeqID;
				}
				if ($organism  ne 'not found'){
		     	$organism_Name=$organism;
				}
				else{
		     	$organism_Name='Unknown';
				}
				if ($locus_tag  ne 'not found'){
		     	$locustag=$locus_tag;
				}
				else{
		    		$locustag='Unknown';
				}
			}
		}   
	unlink("$refSeqID.gbk");
	return ($gene_name,$refSeqID,$locustag,$organism_Name);
	}
}	

