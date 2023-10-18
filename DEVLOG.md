## Context

Making a improved clone of https://www.prodigitalphotos.com

### Day 1

Looked at the old website. What features does it have? How can it be
achieved? One of the main problem is how to deal with the distinction
bw admin and visitors. What contents can admin edit? What type of 
tools should we use to maximize his power for the creation/edition/
deletion of content. The choice of tools were based on the old website.
We need design for the new website to make that choice.

### Day 2

Made some homepage design. Configured devise so that only admins have
login access. Credentials can only be created through backend.

### Day 3

Well well well, added a header in layout. Wrote a feature test, so that
admin can have the ability to edit images. It is possible that multiple
admins are working on the same site. So, if one of them changes the
some part of the resource, it should be visible to everyone. Also, what
logic should be there in views so that visitors can see the resources.
I have thought of having the association `Admins has one Resource`. 
There will be only one record in Resource. All the admins at the time
of creation will be mapped to this resource. Now, resource can have 
association with whatever it wants. All admins will have the access
to modify it by something like `admin1.resource.banner`.
In views we can have Resource.first.banner

### Day 4

Messy day, I spent almost 5 hours to make action text works. Turns out
that I need to procomile every time css or js changes. I thought that
rails detects that by seeing the change in hash of file. Didn't think
much about naming. Huge mistake. I should have named Card as Card Prod
ucts and Photo as Photo Products. 

### Day 5

Fucked up day, wasted. Everything was working correctly untill I added 
a new RAM. I don't know what happened, but the action text stopped 
displaying. I even rolled back to the working version of yesterday. No
luck. I made a test app just to check action text yesterday. In that
test app too, it's not showing.I was happy that my work is done in the
backend. Oh man! 
