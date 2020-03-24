Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E617191B98
	for <lists.bridge@lfdr.de>; Tue, 24 Mar 2020 22:01:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E289487360;
	Tue, 24 Mar 2020 21:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gShiZKdQhdG5; Tue, 24 Mar 2020 21:01:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 299948712D;
	Tue, 24 Mar 2020 21:01:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 108FAC0177;
	Tue, 24 Mar 2020 21:01:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ED7D0C0177
 for <bridge@lists.linux-foundation.org>; Tue, 24 Mar 2020 21:01:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D28C086A73
 for <bridge@lists.linux-foundation.org>; Tue, 24 Mar 2020 21:01:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DQjnsAo2ubCA for <bridge@lists.linux-foundation.org>;
 Tue, 24 Mar 2020 21:01:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C54AF86360
 for <bridge@lists.linux-foundation.org>; Tue, 24 Mar 2020 21:01:51 +0000 (UTC)
Date: Tue, 24 Mar 2020 22:01:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1585083710;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=01kEU6273rx0YUr5+eRtgMVfKmZgR9efexTE9Ovwaqg=;
 b=jnGfBC9PgsmcyW7R2ds7Indltism9qd5iYbztJKbdaRVg2nSijM6ns33oTKwRiXivzId17
 wGiHHOSebBPsgQcn9LwE+dU0LGdfUFp4gb5xWbPT5i1w2v32ISJQbKGu1CickyN2HzAPbi
 Pze0V4isdguXab9/c2QK6HJR/06APK+qhF4E0aA2v0ruZL/WadZ9RvYEVrN5wffKpSG7hS
 7t+y2sY3sv/EfL90m49HyOc0CBDZ66ygN7BUohJ7Twz1ObEzU3iZNxAD3xzk5NXUu6oGBb
 3KXRozuXVOcEaUbqLdy90xs/EcrQu01ZrtJM56Gz+AE/s3QsgWK4X5NY9a77Yg==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: bridge@lists.linux-foundation.org
Message-ID: <20200324210149.GE2357@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Subject: [Bridge] Fwd: [Mcast-wifi] Issues with MLD and Android powersaving
 / sleep mode...
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

And speaking of adoption and experiences, an annoying issue with
MLD+Android we came across lately.

In case someone would like to participate and help on this, too.
Implementing some workaround in the Linux bridge might be
something worth to consider, too.


----- Forwarded message from Linus Lüssing <linus.luessing@c0d3.blue> -----

Date: Tue, 24 Mar 2020 21:54:02 +0100
From: Linus Lüssing <linus.luessing@c0d3.blue>
To: mcast-wifi@ietf.org, pim@ietf.org
Subject: [Mcast-wifi] Issues with MLD and Android powersaving / sleep mode...

Hi,

With Freifunk [0] we lately came across an annoying issue with Android
devices... which I'm not really sure how to solve yet...

It seems that (some?) Android devices do not respond to MLD
queries when in sleep mode:

https://github.com/freifunk-gluon/gluon/issues/1832
https://issuetracker.google.com/issues/149630944

Which causes severe IPv6 connectivity/usability issues
when trying to use MLD snooping capabilities.


As soon as you turn on the screen of the Android device or
connect a charger MLD Reports arrive just fine. My test results
were, as noted in the Android ticket:

Results with phone on battery:
* 0/8 MLD Reports received
* 3/8 Neighbor Advertisements received
* 8/8 Echo Replies received

Results with phone on charger:
* 8/8 MLD Reports received
* 8/8 Neighbor Advertisements received
* 8/8 Echo Replies received


Fixing this on the Android devices would need several years to
propagate, as noted by an Android dev.


Has anyone on this list experienced similar issues, too? And is
there maybe even someone who came up with a workaround that they
implemented on the router/switch side?

If not and if we can't come up with a solution it looks pretty
gloomy for (non-flooding) multicast in wifi networks to me for
the next years...

Regards, Linus


[0]: https://freifunk.net/en/

_______________________________________________
Mcast-wifi mailing list
Mcast-wifi@ietf.org
https://www.ietf.org/mailman/listinfo/mcast-wifi

----- End forwarded message -----
