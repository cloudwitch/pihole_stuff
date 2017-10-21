#!/bin/bash
echo "Commands and list pulled from https://discourse.pi-hole.net/t/commonly-whitelisted-domains/212"
echo "Starting PiHole Whitelist"
echo "Google Maps and other Google services"
pihole -w clients4.google.com 
pihole -w clients2.google.com
echo "YouTube history"
pihole -w s.youtube.com 
pihole -w video-stats.l.google.com
echo "Google Play"
pihole -w android.clients.google.com
echo "Jackbox.tv"
echo "Jackbox.tv52 will not load unless you whitelist google-analytics"
pihole -w www.google-analytics.com
pihole -w ssl.google-analytics.com
echo "Spotify"
echo "The Spotify app for iOS will stop functioning unless it’s web service counterpart is whitelisted"
pihole -w spclient.wg.spotify.com
echo "Microsoft (Windows, Office, Skype, etc)"
echo "Windows uses this to verify connectivity to Internet"
pihole -w www.msftncsi.com
echo "Microsoft Web Pages (Outlook, Office365, Live, Microsoft.com7…)"
pihole -w outlook.office365.com products.office.com c.s-microsoft.com i.s-microsoft.com login.live.com
echo "Backup bitlocker recovery key to Microsoft account"
pihole -w g.live.com
echo "Windows/Xbox store"
pihole -w dl.delivery.mp.microsoft.com geo-prod.do.dsp.mp.microsoft.com displaycatalog.mp.microsoft.com
echo "Xbox Achievements (from Reddit90 and /r/xboxone42)"
pihole -w xbox.ipv6.microsoft.com device.auth.xboxlive.com www.msftncsi.com title.mgt.xboxlive.com xsts.auth.xboxlive.com title.auth.xboxlive.com ctldl.windowsupdate.com attestation.xboxlive.com xboxexperiencesprod.experimentation.xboxlive.com xflight.xboxlive.com cert.mgt.xboxlive.com xkms.xbolive.com def-vef.xboxlive.com notify.xboxlive.com help.ui.xboxlive.com licensing.xboxlive.com eds.xboxlive.com www.xboxlive.com v10.vortex-win.data.microsoft.com settings-win.data.microsoft.com
echo "Skype"
pihole -w s.gateway.messenger.live.com ui.skype.com pricelist.skype.com apps.skype.com m.hotmail.com s.gateway.messenger.live.com sa.symcb.com s{1..5}.symcb.com 
echo "Microsoft Office"
echo "Reddit link - r/pihole - MS Office issues19"
pihole -w officeclient.microsoft.com
echo "Target's Weekly Ads"
pihole -w weeklyad.target.com m.weeklyad.target.com weeklyad.target.com.edgesuite.net
echo "Facebook"
pihole -w creative.ak.fbcdn.net external-lhr0-1.xx.fbcdn.net external-lhr1-1.xx.fbcdn.net external-lhr10-1.xx.fbcdn.net external-lhr2-1.xx.fbcdn.net external-lhr3-1.xx.fbcdn.net external-lhr4-1.xx.fbcdn.net external-lhr5-1.xx.fbcdn.net external-lhr6-1.xx.fbcdn.net external-lhr7-1.xx.fbcdn.net external-lhr8-1.xx.fbcdn.net external-lhr9-1.xx.fbcdn.net fbcdn-creative-a.akamaihd.net scontent-lhr3-1.xx.fbcdn.net scontent.xx.fbcdn.net scontent.fgdl5-1.fna.fbcdn.net
echo "DirectTV"
pihole -w directvnow.com directvapplications.hb.omtrdc.net s.zkcdn.net js.maxmind.com
echo "Bild DE"
pihole -w ec-ns.sascdn.com
echo "Plex Domains"
pihole -w plex.tv tvdb2.plex.tv pubsub.plex.bz proxy.plex.bz proxy02.pop.ord.plex.bz cpms.spop10.ams.plex.bz meta-db-worker02.pop.ric.plex.bz meta.plex.bz tvthemes.plexapp.com.cdn.cloudflare.net tvthemes.plexapp.com 106c06cd218b007d-b1e8a1331f68446599e96a4b46a050f5.ams.plex.services meta.plex.tv cpms35.spop10.ams.plex.bz proxy.plex.tv metrics.plex.tv pubsub.plex.tv status.plex.tv www.plex.tv node.plexapp.com nine.plugins.plexapp.com staging.plex.tv app.plex.tv o1.email.plex.tv  o2.sg0.plex.tv dashboard.plex.tv
echo "Domains used by Plex"
pihole -w gravatar.com - custom login pictures
pihole -w thetvdb.com - metadata for tv series
pihole -w themoviedb.com - metadata for movies
echo "Sonarr"
pihole -w services.sonarr.tv skyhook.sonarr.tv download.sonarr.tv apt.sonarr.tv forums.sonarr.tv
echo "Placehold.it22 (Image placeholders often used during web design. Not sure why this is even blocked in the first place.)"
pihole -w placehold.it placeholdit.imgix.net
echo "Dropbox"
pihole -w dl.dropboxusercontent.com ns1.dropbox.com ns2.dropbox.com
echo "Fox News as described here."
pihole -w widget-cdn.rpxnow.com
echo "Images on Marketwatch.com10"
pihole -w s.marketwatch.com
echo "Apple Music"
pihole -w itunes.apple.com
echo "GoDaddy webmail buttons"
pihole -w imagesak.secureserver.net
echo "Google Chrome (to update on ubuntu)"
pihole -w dl.google.com
echo "Apple ID"
pihole -w appleid.apple.com
pihole restartdns
echo "PiHole Whitelist applied!!!"
