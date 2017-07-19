import vapoursynth as vs
core = vs.get_core()

src = core.ffms2.Source('/home/tesu/Videos/梦想X计划_01.m4v')

out = src.resize.Spline36(1440, 612)

out.set_output()