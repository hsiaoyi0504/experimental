library(reticulate);
use_python("/usr/local/bin/python3");
library(VennDiagram);

source_python("main.py");
png(filename = "Single_Venn_diagram.png");
# set data type in Python will not be converted: https://github.com/rstudio/reticulate/issues/403
venn.plot <- draw.pairwise.venn(area1      = py_len(set_a),
                                area2      = py_len(set_b),
                                cross.area = py_len(set_a$intersection(set_b)),
                                category   = c("Set A", "Set B"),
                                scaled     = FALSE);
dev.off()

# list is conveted by default
print(length(list_a))
print(length(list_b))
print(intersect(list_a, list_b))
