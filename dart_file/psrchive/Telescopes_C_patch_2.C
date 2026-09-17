void Pulsar::Telescopes::DART(Telescope *t)
{
    t->set_name("DART");
    // XXX Not sure if these are correct...
    t->set_mount(Telescope::Fixed);
    t->set_focus(Telescope::PrimeFocus);
}

