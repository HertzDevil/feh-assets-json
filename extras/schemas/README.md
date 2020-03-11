# feh-assets-json/extras/schemas

This directory contains versioned JSON schemas for the JSON dumps under
`files/assets`. They can be used to validate JSON dumps and provide
documentation for JSON fields. The schemas are **not** indicative of the binary
representations of the underlying .bin files, not least because JSON objects
cannot preserve the relative order between keys.

[Ajv-cli](https://github.com/epoberezkin/ajv) can be used to validate JSON
files. For example, to validate the Hero definition files:

```sh
$ cd extras/schemas
$ ajv validate -s "hero-definition/0-current.schema.json" \
               -r "**/0-current.schema.json" \
               -d "../../files/assets/Common/SRPG/Person/*.json"
json/files/assets/Common/SRPG/Person/00_first.json valid
json/files/assets/Common/SRPG/Person/191201_alf.json valid
json/files/assets/Common/SRPG/Person/191202_winter.json valid
json/files/assets/Common/SRPG/Person/191203_legend.json valid
json/files/assets/Common/SRPG/Person/191204_newyear.json valid
json/files/assets/Common/SRPG/Person/200101_seisen.json valid
...
```

Every type has its own subdirectory of versioned JSON schemas. The `0-current`
schemas track the most current struct definitions, reference other `0-current`
schemas only, and can be used alone to validate dumps on the `master` branch.
The other schemas represent past struct definitions since a given app version
number, e.g. `3-2-0.schema.json` can be used to validate JSON dumps created
since Version 3.2.0, but if `3-10-0.schema.json` also exists, then the former
can only validate JSONs up to Version 3.9.x. They may reference other schemas
with same or lower version numbers.

# Types for JSON files

* `combat-manual-list`: Validates `files/assets/Common/StockShop/*.bin`.
* `hero-definition`: Validates `files/assets/Common/SRPG/Person/*.bin`.

# Types for auxiliary data

* `datetime-range`: Pair of UTC datetimes denoting a possibly unbounded time
  range. May also represent recurring events.
* `int8`, `int16`, `int32`, `int64`: Signed fixed-width integers.
* `legendary-info`: Extra properties for Legendary / Mythic / Duo Heroes.
* `reward-definition`: List of reward items. At the moment, this schema does not
  actually validate individual item fields based on the item kind.
* `stats-tuple`: Generic integer 5-tuple.
* `uint8`, `uint16`, `uint32`, `uint64`: Unsigned fixed-width integers. Although
  some of these integers are internally signed, unsigned types are still used as
  long as all the used values are non-negative.
