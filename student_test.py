bernard = Student('bernard', ['DS 5100', 'DS 6001', 'STAT 6021'])
def test_01(self):
    assert bernard.num_courses == 3
bernard.unenroll_in_course('DS 5100')
def test_02(self):
    assert 'DS 5100' not in bernard.courses
