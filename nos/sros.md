# QPPB

```
configure {
    policy-options {
        community "downgrade" {
            member "downgrade" { }  ## FIXME
        }
    }
    policy-statemeent "bgp-in" {
        entry 100 {
            from {
                community {
                    name "downgrade"
                }
            }
            action {
                action-type next-entry
                fc l2
                priority low
            }
        }
    }
}
```
