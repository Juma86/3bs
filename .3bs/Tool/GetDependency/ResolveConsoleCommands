#!/usr/bin/env -S jq -rf --slurpfile backend ${handlerpath}/deps.handler.json
. as $inp |
(   $backend[0].environment
  + (.environment // {})
) as $env |

del(.environment) |

(   ($backend[0] | del(.environment))
  + ($inp.handler // {})
) as $preprocessed_method |

del(.handler) as $dep |

(   $preprocessed_method | with_entries( .value |=
        gsub("§(?<macro>[^§]+)§" ; $env[.macro] // "[MACRO UNDEFINED]")
)   ) as $method |

(   $dep | to_entries[] |
        .key as $k |
        .value[] as $val |
    if $method[$k] then
        "\($method[$k])" | gsub("\\{}"; "\($val|tostring)")
    else
        "\u001b[31mUnknown handler: \"\($k)\" \(. )\u001b[0m"
    end
) as $out |

$out