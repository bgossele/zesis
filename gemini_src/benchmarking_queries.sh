	gemini query -q "SELECT chrom,start,end,pi FROM variants \
        	       	 WHERE  = 'ts' \
       				and call_rate >= 0.95" 
	
	gemini query -q "SELECT chrom, start, end, ref, alt, gene FROM variants" \
		--gt-filter "gt_types.HG00239 == HET || gt_types.NA19377 == HOM_REF" 

	gemini query -q "SELECT chrom, start, end, ref, alt, gene FROM variants" \
	        --gt-filter "gt_types.HG00239 == HET && gt_types.NA19377 == HOM_REF" 

	gemini query -q "SELECT chrom, start, end, ref, alt, gene FROM variants" \
	        --gt-filter "gt_types.HG00239 != HET" 

	gemini query -q "SELECT chrom, start, end, ref, alt, gene FROM variants" \
	        --gt-filter "[gt_types].[phenotype=='2'].[!= HOM_REF].[all]" 
	
	gemini query -q "SELECT chrom, start, end, ref, alt, gene FROM variants" \
	        --gt-filter "[gt_types].[phenotype=='2'].[== HOM_REF].[all] && \
                            	[gt_depths].[phenotype=='2'].[>=20].[all]" 

	gemini query -q "SELECT chrom, start, end, ref, alt, gene FROM variants" \
	        --gt-filter "[gt_depths].[phenotype=='2'].[<10].[count <= 20] && \
               			[gt_types].[phenotype=='2'].[!= HOM_REF].[all]" 

	gemini query -q "SELECT chrom,start FROM variants \
                         WHERE chrom = 'chr22' and start > 16000000 \
                        	and start <= 18000000"
