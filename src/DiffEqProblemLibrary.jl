__precompile__()

module DiffEqProblemLibrary

using DiffEqBase, ParameterizedFunctions, DiffEqPDEBase, JLD

include("ode_premade_problems.jl")
include("dae_premade_problems.jl")
include("dde_premade_problems.jl")
include("sde_premade_problems.jl")
include("fem_premade_problems.jl")
include("premade_meshes.jl")

#ODE Example Problems
export prob_ode_linear, prob_ode_bigfloatlinear, prob_ode_2Dlinear,
       prob_ode_large2Dlinear, prob_ode_bigfloat2Dlinear, prob_ode_rigidbody,
       prob_ode_2Dlinear_notinplace, prob_ode_vanderpol, prob_ode_vanderpol_stiff,
       prob_ode_lorenz, prob_ode_rober, prob_ode_threebody, prob_ode_mm_linear, prob_ode_pleiades

 #SDE Example Problems
 export prob_sde_wave, prob_sde_linear, prob_sde_cubic, prob_sde_2Dlinear, prob_sde_lorenz,
        prob_sde_2Dlinear, prob_sde_additive, prob_sde_additivesystem, oval2ModelExample

 #SDE Stratonovich Example Problems
 export prob_sde_linear_stratonovich, prob_sde_2Dlinear_stratonovich

 #DAE Example Problems
 export prob_dae_resrob

#DDE Example Problems
export prob_dde_1delay, prob_dde_1delay_notinplace, prob_dde_1delay_scalar_notinplace,
       prob_dde_2delays, prob_dde_2delays_notinplace, prob_dde_2delays_scalar_notinplace,
       prob_dde_1delay_long, prob_dde_1delay_long_notinplace,
       prob_dde_1delay_long_scalar_notinplace, prob_dde_2delays_long,
       prob_dde_2delays_long_notinplace, prob_dde_2delays_long_scalar_notinplace

 #FEM Example Problems
 export  prob_femheat_moving, prob_femheat_pure, prob_femheat_diffuse,
         prob_poisson_wave, prob_poisson_noisywave, prob_femheat_birthdeath,
         prob_poisson_birthdeath, prob_femheat_stochasticbirthdeath,
         prob_stokes_homogenous, prob_stokes_dirichletzero, prob_poisson_birthdeathsystem,
         prob_poisson_birthdeathinteractingsystem, prob_femheat_birthdeathinteractingsystem,
         prob_femheat_birthdeathsystem, prob_femheat_diffusionconstants,
         heatProblemExample_grayscott,heatProblemExample_gierermeinhardt,
         prob_femheat_stochasticbirthdeath_fast,prob_femheat_pure11,prob_femheat_moving7


export   cs_fempoisson_wave,cs_femheat_moving_dt,cs_femheat_moving_dx, cs_femheat_moving_faster_dt

 #Example Meshes
 export  meshExample_bunny, meshExample_flowpastcylindermesh, meshExample_lakemesh,
         meshExample_Lshapemesh, meshExample_Lshapeunstructure, meshExample_oilpump,
         meshExample_wavymesh, meshExample_wavyperturbmesh

end # module
