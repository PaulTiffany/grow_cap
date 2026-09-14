# grow_cap architecture

GrowCap is an open hardware system for portable, composable, living food production. Its machine is the plant ecosystem as a whole: plant, roots, water, air, substrate, organisms, printed components, local environment, and human care.

No single cap, base, or biocore is the entire system. Implementations may be built from multiple printable or conventionally fabricated pieces, and multiple plant cells may share infrastructure.

## Stable principles, adaptable forms

GrowCap standardizes the principles needed for safe composition:

1. physically independent clean- and dirty-water paths;
2. gravity-directed flow and visible failure;
3. serviceable, inspectable, and replaceable wet components;
4. compatible plant, reservoir, drain, and overflow interfaces;
5. no dependency on proprietary hardware or consumables.

Everything else may be adapted to the plant, setting, printer, materials, light, available space, and desired level of automation.

## Two independent hydraulic paths

### Clean-water path

`clean fill port → dedicated bypass path → root-zone clean outlet`

The clean stream never enters the mulch, worm/microbial chamber, biochar, collector, or nutrient-metering path. Separation is physical, not merely procedural.

### Biological path

One reference path is:

`dirty/organic fill → mulch prefilter → removable mesh → worm or microbial chamber → biochar buffer → collector → replaceable restrictor → root-zone nutrient outlet`

Gravity supplies transport. A replaceable restrictor may control delivery rate. A visible external overflow must activate before liquid can cross into the clean-water interface.

The biological path is optional and modular. A GrowCap can use another safe nutrient strategy while preserving the separation and failure invariants.

## Design invariant

The two streams may both serve the plant, but they do not share plumbing. They meet only through the living root zone after the biological stream has been transformed and metered.

## Reference modules

1. **Plant collar or root carrier** — adapts an established plant to the system without requiring a unique biodome.
2. **Clean-water interface** — fill or docking path isolated from biological processing.
3. **Biological inlet and prefilter** — accepts appropriate organic-bearing input while retaining coarse solids.
4. **Biocore basket** — removable and vented; may accept worms, microbial substrate, passive litter treatment, or be omitted.
5. **Buffer or filter tray** — removable treatment stage such as biochar where experimentally justified.
6. **Collector and drain** — meters useful output, exposes overflow, and preserves separation.
7. **Reservoir or base** — optional reference component; users may adapt compatible ordinary containers.
8. **Array connector** — allows plant cells to tile into larger trays, shelves, roofs, retail displays, or shared urban installations.

## Plant-specific profiles

The common architecture should support openly developed profiles rather than a bespoke complete machine for every species. A profile may specify:

- collar and root-carrier geometry;
- plant spacing and support;
- root volume and medium;
- clean-water and nutrient delivery;
- aeration and drainage;
- light requirements;
- pruning and harvest rhythm;
- expected productive lifespan;
- sanitation and redocking procedure.

Candidate high-value profiles include basil, mint, strawberries, compact peppers, and compact tomatoes. The aim is sustained useful production per plant under city constraints, not maximum seedlings per tray.

## Experimental measures

Plant profiles should earn confidence through comparable trials. Useful measures include:

- edible yield per plant and per unit area;
- productive lifespan and number of harvests;
- water and nutrient use per edible mass;
- survival through transport and redocking;
- required light and labor;
- root health, leakage, clogging, and contamination;
- cleaning, repair, reuse, and end-of-life outcomes.

Learned bests belong in the open design library alongside the geometry and conditions that produced them.

## What v0.2 does not claim

- It does not prove that worms can thrive at this scale.
- It does not establish safe nutrient concentrations.
- It does not certify printed PLA for permanent wet or food-contact use.
- It does not automate plant demand sensing.
- It does not prove commercial-scale yield or sanitation.
- It does not define a proprietary docking ecosystem.

Those are experimental questions, not assumptions embedded in the CAD.
