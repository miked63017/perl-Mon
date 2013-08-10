package Client::Timeperiod;
use Moose;


has 'timeperiod_name'   => (isa => 'Any', is => 'rw'); # timeperiod_name
has 'alias'   => (isa => 'Any', is => 'rw'); # alias
has 'weekday'   => (isa => 'Any', is => 'rw'); # timeranges
has 'exception'   => (isa => 'Any', is => 'rw'); # timeranges
has 'exclude'   => (isa => 'Any', is => 'rw'); # [timeperiod1,timeperiod2,...,timeperiodn]

=head1
define timeperiod{

	timeperiod_name		nonworkhours

	alias			Non-Work Hours

	sunday			00:00-24:00			; Every Sunday of every week

	monday			00:00-09:00,17:00-24:00		; Every Monday of every week

	tuesday			00:00-09:00,17:00-24:00		; Every Tuesday of every week

	wednesday			00:00-09:00,17:00-24:00		; Every Wednesday of every week

	thursday			00:00-09:00,17:00-24:00		; Every Thursday of every week

	friday			00:00-09:00,17:00-24:00		; Every Friday of every week

	saturday			00:00-24:00			; Every Saturday of every week

	}



define timeperiod{

	timeperiod_name		misc-single-days

	alias			Misc Single Days

	1999-01-28		00:00-24:00 		; January 28th, 1999

	monday 3			00:00-24:00		; 3rd Monday of every month

	day 2			00:00-24:00		; 2nd day of every month

	february 10		00:00-24:00		; February 10th of every year

	february -1		00:00-24:00		; Last day in February of every year

	friday -2			00:00-24:00		; 2nd to last Friday of every month

	thursday -1 november	00:00-24:00		; Last Thursday in November of every year

	}

	

define timeperiod{

	timeperiod_name		misc-date-ranges

	alias			Misc Date Ranges

	2007-01-01 - 2008-02-01	00:00-24:00		; January 1st, 2007 to February 1st, 2008

	monday 3 - thursday 4	00:00-24:00		; 3rd Monday to 4th Thursday of every month

	day 1 - 15		00:00-24:00		; 1st to 15th day of every month

	day 20 - -1		00:00-24:00		; 20th to the last day of every month

	july 10 - 15		00:00-24:00		; July 10th to July 15th of every year

	april 10 - may 15		00:00-24:00		; April 10th to May 15th of every year

	tuesday 1 april - friday 2 may	00:00-24:00	; 1st Tuesday in April to 2nd Friday in May of every year

	}



define timeperiod{

	timeperiod_name		misc-skip-ranges

	alias			Misc Skip Ranges

	2007-01-01 - 2008-02-01 / 3		00:00-24:00	; Every 3 days from January 1st, 2007 to February 1st, 2008

	2008-04-01 / 7			00:00-24:00	; Every 7 days from April 1st, 2008 (continuing forever)

	monday 3 - thursday 4 / 2		00:00-24:00	; Every other day from 3rd Monday to 4th Thursday of every month

	day 1 - 15 / 5			00:00-24:00	; Every 5 days from the 1st to the 15th day of every month

	july 10 - 15 / 2			00:00-24:00	; Every other day from July 10th to July 15th of every year

	tuesday 1 april - friday 2 may / 6	00:00-24:00	; Every 6 days from the 1st Tuesday in April to the 2nd Friday in May of every year

	}
=cut
1;