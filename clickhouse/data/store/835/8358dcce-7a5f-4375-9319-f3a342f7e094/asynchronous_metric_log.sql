ATTACH TABLE _ UUID '9f52659c-73eb-4e17-9aff-0f1d9aac9979'
(
    `hostname` LowCardinality(String) CODEC(ZSTD(1)),
    `event_date` Date CODEC(Delta(2), ZSTD(1)),
    `event_time` DateTime CODEC(Delta(4), ZSTD(1)),
    `metric` LowCardinality(String) CODEC(ZSTD(1)),
    `value` Float64 CODEC(ZSTD(3))
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(event_date)
ORDER BY (metric, event_date, event_time)
SETTINGS index_granularity = 8192
