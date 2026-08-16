# EE5311

The following repository consists of all the code and tutorials I have tried as part of
EE5311 (Digital IC Design) course.

## Layout

- `tutorials/` - in-class tutorial schematics and netlists
- `assignments/` - graded assignments, one directory each:
  - [`assignment1`](assignments/assignment1) - MOSFET I-V characteristics (nMOS/pMOS transfer & output characteristics, velocity saturation, capacitor charging/discharging)
  - [`assignment2`](assignments/assignment2) - Inverter DC characteristics (static CMOS inverter sizing/VTC/noise margins, pseudo-nMOS inverter)
- `common/` - shared LaTeX template and the `release` Makefile logic used by every assignment

## Build

Each assignment builds its own report independently, or all at once from the repo root:

```
make          # build every assignment's index.pdf
make release  # build the PDF, then package sources + PDF into NS26Z186.zip per assignment
make clean    # remove built PDFs and release zips
```

Run the same targets inside an `assignments/assignmentN/` directory to build just that one.
