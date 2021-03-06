{% wire id="admin_linkedin" type="submit" postback="admin_linkedin" delegate=`mod_linkedin` %}
<form name="admin_linkedin" id="admin_linkedin" class="form-horizontal" method="POST" action="postback">
    <div class="row">
        <div class="col-md-6">
            <div class="widget">
                <h3 class="widget-header"><span class="icon-linkedin-sign"></span> LinkedIn</h3>
                <div class="widget-content">

                    <div class="clearfix">
                        <h1 class="icon-linkedin-sign pull-left">&nbsp;</h1>
                        <p>LinkedIn<br/>
                            <small>{_ You can find the application keys in _} <a href="https://www.linkedin.com/secure/developer" title="Developer Network" target="_blank">{_ Your LinkedIn Developer Network _}</small></a>
                        </p>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-md-3" for="linkedin_consumer_key">{_ API Key _}</label>
                        <div class="col-md-9">
                            <input type="text" id="linkedin_appid" name="appid" value="{{ m.config.mod_linkedin.appid.value|escape }}" class="col-lg-6 col-md-6 form-control" />
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label class="control-label col-md-3" for="appsecret">{_ Secret Key _}</label>
                        <div class="col-md-9">
                            <input type="text" id="linkedin_consumer_secret" name="appsecret" value="{{ m.config.mod_linkedin.appsecret.value|escape }}" class="col-lg-6 col-md-6 form-control" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-md-3" for="linkedin_scope">{_ Scope _}</label>
                        <div class="col-md-9">
                            <input type="text" id="linkedin_scope" name="scope" value="{{ m.config.mod_linkedin.scope.value|default:'r_basicprofile r_emailaddress r_contactinfo'|escape }}" class="col-lg-6 col-md-6 form-control" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-9 col-md-offset-3">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" id="linkedin_useauth" name="useauth" {% if m.config.mod_linkedin.useauth.value %}checked="checked"{% endif %} value="1" />
                                    {_ Use LinkedIn authentication _}
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-offset-3">
                            <button class="btn btn-primary" type="submit">{_ Save LinkedIn Settings _}</button>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</form>
