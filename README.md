# TIMES-GEO_GAMS

To obtain the model, including the TIMES source code, run the following command:
> git clone --recurse-submodules https://github.com/E4SMA/TIMES-GEO_GAMS

To run a specific scenario (e.g. base-100) execute the following command from root:
> GAMS runmodel --scenario=base-100

The model is solved using [HiGHS](https://highs.dev/) by default. Adjust the command to solve it e.g., with CPLEX:
> GAMS runmodel --scenario=base-100 --solve_with=CPLEX

You can also transform any of the scenarios to a scalar model using [CONVERT](https://www.gams.com/48/docs/S_CONVERT.html). The [options](https://www.gams.com/48/docs/S_CONVERT.html#CONVERT_Language), e.g. MPS format, can be specified in [convert.opt](./convert.opt).
> GAMS runmodel --scenario=base-100 --solve_with=CONVERT