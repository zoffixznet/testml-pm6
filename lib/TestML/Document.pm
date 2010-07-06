use v6;

class TestML::Document::Meta { ... }
class TestML::Document::Tests { ... }
class TestML::Document::Data { ... }
class TestML::Document;

has $.meta = TestML::Document::Meta.new;
has $.test = TestML::Document::Tests.new;
has $.data = TestML::Document::Data.new;

#-----------------------------------------------------------------------------
class TestML::Document::Meta;

has $.data = {
    TestML => '',
    Data => [],
    Title => '',
    Plan => 0,
    BlockMarker => '===',
    PointMarker => '---',
};

#-----------------------------------------------------------------------------
class TestML::Document::Tests;

has $.statements = [];

#-----------------------------------------------------------------------------
class TestML::Expression { ... }
class TestML::Assertion { ... }
class TestML::Statement;

has $.expression = TestML::Expression.new;
has $.assertion is rw;
has $.points = [];

#-----------------------------------------------------------------------------
class TestML::Expression;

has $.transforms = [];

#-----------------------------------------------------------------------------
class TestML::Assertion;

has $.name;
has $.expression = TestML::Expression.new;

#-----------------------------------------------------------------------------
class TestML::Transform;

has $.name;
has $.args = [];

#-----------------------------------------------------------------------------
class TestML::Document::Data;

has $.blocks = [];

#-----------------------------------------------------------------------------
class TestML::Block;

has $.label is rw = '';
has $.points = {};
