Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CF8653E0F
	for <lists.bridge@lfdr.de>; Thu, 22 Dec 2022 11:12:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4133141919;
	Thu, 22 Dec 2022 10:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4133141919
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ucw.cz header.i=@ucw.cz header.a=rsa-sha256 header.s=gen1 header.b=iSK/6k6Y
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-6q5GGb5pGU; Thu, 22 Dec 2022 10:12:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 9C0654190F;
	Thu, 22 Dec 2022 10:12:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C0654190F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7F1FBC0080;
	Thu, 22 Dec 2022 10:12:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9E240C019B
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 19:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9983F81E71
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 19:40:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9983F81E71
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=ucw.cz header.i=@ucw.cz header.a=rsa-sha256
 header.s=gen1 header.b=iSK/6k6Y
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P2F2qRC4GA8s for <bridge@lists.linux-foundation.org>;
 Tue, 20 Dec 2022 19:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CC9A81E6B
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3CC9A81E6B
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 19:40:00 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 8D0971C09F9; Tue, 20 Dec 2022 20:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
 t=1671565196;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Z6Z4LV97YlfeiHNsI0GPtvBWuPiFBia9iXHj9p0V7f4=;
 b=iSK/6k6YdYfe0pf3QIaGF0m9os72nxF3CAqc4kVpFydNcBeDZyAXwLd29ygI3aWdCD/P4E
 hjb1tP04xpxvEqTGSku5jVwZ3Ze5vyiRMUS/PfukmleXTPDA24OIQLtf5lIYLLX2i19Nc9
 ctnIK+xkRK2AK199jxQW3iEge/uxrTY=
Date: Tue, 20 Dec 2022 20:39:56 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <Y6IPjC9mpnoquL8S@duo.ucw.cz>
References: <20221220134519.3dd1318b@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature"; boundary="Q4QndSuPZQc8d5xp"
Content-Disposition: inline
In-Reply-To: <20221220134519.3dd1318b@gandalf.local.home>
X-Mailman-Approved-At: Thu, 22 Dec 2022 10:12:40 +0000
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, lvs-devel@vger.kernel.org,
 linux-acpi@vger.kernel.org, SHA-cyfmac-dev-list@infineon.com,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 intel-gfx@lists.freedesktop.org, linux-nfs@vger.kernel.org,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Anna-Maria Gleixner <anna-maria@linutronix.de>,
 brcm80211-dev-list.pdl@broadcom.com, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Julia Lawall <Julia.Lawall@inria.fr>, linux-bluetooth@vger.kernel.org,
 netfilter-devel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Bridge] [PATCH] treewide: Convert del_timer*() to
	timer_shutdown*()
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>


--Q4QndSuPZQc8d5xp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue 2022-12-20 13:45:19, Steven Rostedt wrote:
> [
>   Linus,
>=20
>     I ran the script against your latest master branch:
>     commit b6bb9676f2165d518b35ba3bea5f1fcfc0d969bf
>=20
>     As the timer_shutdown*() code is now in your tree, I figured
>     we can start doing the conversions. At least add the trivial ones
>     now as Thomas suggested that this gets applied at the end of the
>     merge window, to avoid conflicts with linux-next during the
>     development cycle. I can wait to Friday to run it again, and
>     resubmit.
>=20
>     What is the best way to handle this?
> ]
>=20
> From: "Steven Rostedt (Google)" <rostedt@goodmis.org>
>=20
> Due to several bugs caused by timers being re-armed after they are
> shutdown and just before they are freed, a new state of timers was added
> called "shutdown". After a timer is set to this state, then it can no
> longer be re-armed.
>=20
> The following script was run to find all the trivial locations where
> del_timer() or del_timer_sync() is called in the same function that the
> object holding the timer is freed. It also ignores any locations where the
> timer->function is modified between the del_timer*() and the free(), as
> that is not considered a "trivial" case.
>=20
> This was created by using a coccinelle script and the following
commands:

LED parts looks good to me.

Getting it in just before -rc1 would be best solution for me.

Best regards,
								Pavel
--=20
People of Russia, stop Putin before his war on Ukraine escalates.

--Q4QndSuPZQc8d5xp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCY6IPjAAKCRAw5/Bqldv6
8qFnAJ4h7/YkgMmaMAi5FTo4aeUHj64lowCgv7jO/1JyimzJx+06JHTOXFlIAIk=
=01ne
-----END PGP SIGNATURE-----

--Q4QndSuPZQc8d5xp--
