struct Mode
{
	int characterCountBitsForVersions0To9_;
	int characterCountBitsForVersions10To26_;
	int characterCountBitsForVersions27AndHigher_;
};

struct Mode Mode_forBits();

extern struct Mode MODES[10];