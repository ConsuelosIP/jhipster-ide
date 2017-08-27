/*
 * generated by Xtext 2.12.0
 */
package io.github.jhipster.xjdl.web

import com.google.inject.Guice
import com.google.inject.Injector
import io.github.jhipster.xjdl.XjdlRuntimeModule
import io.github.jhipster.xjdl.XjdlStandaloneSetup
import io.github.jhipster.xjdl.ide.XjdlIdeModule
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages in web applications.
 */
class XjdlWebSetup extends XjdlStandaloneSetup {
	
	override Injector createInjector() {
		return Guice.createInjector(Modules2.mixin(new XjdlRuntimeModule, new XjdlIdeModule, new XjdlWebModule))
	}
	
}