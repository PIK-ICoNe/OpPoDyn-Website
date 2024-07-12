---
title: OpPoDyn
---


<!-------------------------------------- Main Cover ---------------------------------------------------->

<!-- Main title of the page -->
<!-- sets the title of the section in large letters-->
{{< blocks/cover title="OpPoDy: An Open Source Software Suite for Research on the Dynamics of Networks and Power Grids"
image_anchor="top" height="full" >}}

  <!-- Long title of the Project -->
  <p class="lead mt-5">
    OpPoDyn is a BMWK funded project that develops a state of the art simulation tool for networked dynamical systems
    and power grids using the <a href="https://julialang.org">Julia programming language</a>. It is built on prior work on NetworkDynamics.jl and PowerDynamics.jl:
    While NetworkDynamics.jl provides a fast backend for solving general DAE problems defined on a graph topology using solvers from <a href=https://github.com/SciML/DifferentialEquations.jl>DifferentaialEquations.jl</a>, PowerDynamics.jl provides additional tools specifically tailored towars power grid modeling.
  </p>

  <!-- Provides the HTML Hyperlink to Github Repo -->
  <a class="btn btn-lg btn-secondary me-3 mb-4" href="https://github.com/PIK-ICoNe/NetworkDynamics.jl">
    NetworkDynamics.jl <i class="fab fa-github ms-2 "></i>
  </a>
  <a class="btn btn-lg btn-secondary me-3 mb-4" href="https://github.com/JuliaEnergy/PowerDynamics.jl">
    PowerDynamics.jl <i class="fab fa-github ms-2 "></i>
  </a>
  
  Please note, that both linked packages will receive substantial updates and changes during the course of this project.

  {{< blocks/link-down color="info" >}}
{{< /blocks/cover >}}


<!-------------------------------------- Main Goals of the project  ---------------------------------------------------->

<!-- sets the colour of the section. In this case "primary" -->
{{% blocks/lead color="primary" %}}
  ## Main Project Goals
  
  OpPoDyn aims to provide an extensible framework for dynamic simulation of power grids both in RMS and EMT time domain.
  We aim at providing tools to easily implement and test your own models, control strategies and test scenarios without
  compromises in performance, instead of purely relying on built-in models and fault scenarios.
  As such, PowerDynamics.jl is especially suited for testing of new control algorithms, big ensemble studies, sensitivity
  analysis and parameter optimization.
  
{{% /blocks/lead %}}


<!-------------------------------------- Features ---------------------------------------------------->

<!-- sets the colour and type of the section. In this case "dark" and "row" respectively -->
{{% blocks/section color="dark" type="row" %}}

  <!-- sets the icon and message that appears underneath it. In this case "fa-lightbulb" and Name of Feature" 
  respectively -->

  {{% blocks/feature icon=" " title="GPU Parallel out of the Box" %}}
  <p>
    Extract and exploit parallelism based on the network structure and parallelize execution both on CPU and GPU.
  </p>
  {{% /blocks/feature %}}

  {{% blocks/feature icon="fa-star" title="Equation Based Modeling" %}}
  <p>
    Specify components using equations. Build composite models based 
    on previously defined building blocks.
  </p>
  {{% /blocks/feature %}}

  {{% blocks/feature icon="fa-star" title="EMT and RMS Models" %}}
  <p>
    Pick models from a wide variety from highly detailed EMT models 
    to simplified quasi-static RMS models.
  </p>
  {{% /blocks/feature %}}

  {{% blocks/feature icon="fa-star" title="Hackable & Extensible" %}}
  <p>
    Everything from component library to solvers is published under 
    MIT license.
    Inspect the definition of build-in components, create you own 
    model derivations or completly new test scenarios.
  </p>
  {{% /blocks/feature %}}

  {{% blocks/feature icon="fa-star" title="AD Compatible" %}}
  <p>
    Leverage automatic differentiation through models and solvers to 
    speed up sensitivity analysis or parameter optimization.
  </p>
  {{% /blocks/feature %}}

  {{% blocks/feature icon="fa-star" title="Visualisation Tools" %}}
  <p>
    Built in tools to inspect and visualize simulation results ranging from
    simple timeseries export to complete network plots.
  </p>
  {{% /blocks/feature %}}

{{% /blocks/section %}}



<!-------------------------------------- Project Partners ---------------------------------------------------->

{{< blocks/section color="700">}}
<div class="col">
	<h2 class="text-center pb-3">Project Partners</h2>
	<p class="text-center showcase">
		<a href="https://www.pik-potsdam.de/en/output/projects/all/1005"><img alt="PIK Logo" width="20%" src="project_partners/PIK_Logo_A_RGB.png" style="margin-right: 3em" /></a>
		<a href="https://ie3.etit.tu-dortmund.de/"><img alt="TU Dortmund Logo" width="10%" src="project_partners/ie3_logo_2023.svg" style="margin-right: 3em" /></a>
		<a href="https://www.bmwk.de/Navigation/EN/Home/home.html"><img alt="BMWK Logo" width="20%" src="project_partners/bmwk_logo_en.svg" style="margin-right: 3m" /></a>
	</p>
</div>
{{< /blocks/section >}}
