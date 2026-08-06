# IdeaSpace Bambu Lab A1 build procedure

Target machine: **Bambu Lab A1, 0.4 mm nozzle** at IdeaSpace Fredericksburg.

## Bring

- STL print pack on USB and phone/cloud backup;
- real pot or lid opening to measure;
- tubing and grommet intended for the prototype;
- digital calipers;
- notebook or measurement sheet.

## Bambu Studio setup

1. Import the STL files as separate objects.
2. Select **Bambu Lab A1**, **0.4 mm nozzle**.
3. Use IdeaSpace's approved PLA profile and staff-supplied settings.
4. Pilot quality: **0.20 mm Standard**.
5. Editing scope: **Global**; Advanced options: **On**.
6. Scaling: **100%**.
7. Supports: **Off**.
8. Timelapse: **Off**.
9. Flow calibration and auto bed leveling: **On**.

## Orientation

| Part | Build-plate orientation | Supports |
|---|---|---|
| fit coupon | largest flat face down | off |
| cap body | broad flat underside down | off |
| clean funnel | wide rim down, spigot upward | off |
| dirty sump | closed bottom down, mouth up | off |
| biological basket | perforated bottom down, mouth up | off |
| split collar | flat ring face down | off |

## Print sequence

### Plate 1 — fit coupon

Print `grow_fit_coupon_v0.1.stl` alone. Measure every hole and socket. Do not compensate by globally scaling the model; record printer-specific error and revise the source dimensions.

### Plate 2 — hydraulic modules

Print:

- `grow_clean_funnel_v0.1.stl`
- `grow_dirty_sump_v0.1.stl`
- `grow_dirty_basket_v0.1.stl`
- `grow_split_collar_14mm_v0.1.stl`

Inspect the sliced preview for an open funnel bore, a closed sump floor, open drain passage, basket slots, and a complete radial split in the collar.

### Plate 3 — cap body

Print `grow_cap_body_v0.1.stl` only after the coupon and modules have been physically checked. The 140 mm cap fits within the A1 build area.

## Printer-session pass criteria

- no layer separation or detached features;
- basket removes from sump by hand;
- funnel and sump seat without force;
- collar remains one connected C-ring;
- outlet bores remain open;
- actual dimensions and slicer settings are recorded for revision 0.2.

This is a dimensional prototype, not a validated wet biological device.
