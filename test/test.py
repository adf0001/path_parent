import sys

print(sys.path)

from ..pkg.path_parent import p		    # append '..' to path setting;
print(sys.path)

from ..pkg.path_parent import pp		# append '../..' to path setting;
print(sys.path)

from ..pkg.path_parent import ppp		# append '../../..' to path setting;
print(sys.path)

from ..pkg import path_parent			# nothing appended;

path_parent.clear("../..")			# remove only '../..';
print(sys.path)

path_parent.clear("..\..\..")		# nothing removed, not backslash;
print(sys.path)

path_parent.clear()			        # remove all '..', '../..' and '../../..';
print(sys.path)
