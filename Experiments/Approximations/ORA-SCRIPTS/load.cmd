sqlldr userid=exper/thebest1 control=load_part.ctl data=part.tbl

sqlldr userid=exper/thebest1 control=load_region.ctl data=region.tbl
sqlldr userid=exper/thebest1 control=load_nation.ctl data=init1_nation.tbl

sqlldr userid=exper/thebest1 control=load_supplier.ctl data=init1_supplier.tbl
sqlldr userid=exper/thebest1 control=load_supplier.ctl data=init2_supplier.tbl

sqlldr userid=exper/thebest1 control=load_partsupp.ctl data=partsupp.tbl

sqlldr userid=exper/thebest1 control=load_customer.ctl data=init1_customer.tbl
sqlldr userid=exper/thebest1 control=load_customer.ctl data=init2_customer.tbl

sqlldr userid=exper/thebest1 control=load_orders.ctl data=init1_orders.tbl
sqlldr userid=exper/thebest1 control=load_orders.ctl data=init2_orders.tbl

sqlldr userid=exper/thebest1 control=load_lineitem.ctl data=lineitem.tbl
