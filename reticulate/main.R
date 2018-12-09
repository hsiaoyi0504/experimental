library(reticulate);
use_python("/usr/local/bin/python3");
library(VennDiagram);

source_python("main.py");
png(filename = "Single_Venn_diagram.png");
venn.plot <- draw.pairwise.venn(area1      = length(set_a),
                                area2      = length(set_b),
                                cross.area = length(intersect(set_a, set_b)),
                                category   = c("Set A", "Set B"),
                                scaled     = FALSE);
dev.off()

