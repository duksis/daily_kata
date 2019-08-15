#!/usr/bin/env python
def custom_reverse(string, new_string=""):
    if string == '':
        return new_string
    return custom_reverse(string[1:], "%s%s" % (string[0], new_string))

def test_custom_reverse():
    assert custom_reverse("abc") == "cba"

if __name__ == "__main__":
    test_custom_reverse()
    print("Everything passed")
