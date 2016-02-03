
sqlldr userid=exper/thebest1 control=load_region.ctl data=../../../old/ora-scripts/e-tpch-tested/init1_region.tbl
sqlldr userid=exper/thebest1 control=load_nation.ctl data=../../../old/ora-scripts/e-tpch-tested/init1_nation.tbl

sqlldr userid=exper/thebest1 control=load_supplier.ctl data=../../../old/ora-scripts/e-tpch-tested/init1_supplier.tbl
sqlldr userid=exper/thebest1 control=load_supplier.ctl data=../../../old/ora-scripts/e-tpch-tested/init2_supplier.tbl

sqlldr userid=exper/thebest1 control=load_lineitem.ctl data=../../../old/ora-scripts/e-tpch-tested/init1_lineitem.tbl
sqlldr userid=exper/thebest1 control=load_lineitem.ctl data=../../../old/ora-scripts/e-tpch-tested/init2_lineitem.tbl
