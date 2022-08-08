import pytest
from qiskit.compiler import transpile
from qiskit.providers.fake_provider import (
    FakeWashington,
    FakeBrooklyn,
    FakeRochester,
    FakeMontreal,
    FakeCairo,
    FakeToronto,
    FakeGuadalupe,
    FakeMelbourne,
)

backends = [
    FakeWashington(),
    FakeBrooklyn(),
    FakeRochester(),
    FakeMontreal(),
    FakeCairo(),
    FakeToronto(),
    FakeGuadalupe(),
    FakeMelbourne(),
]
