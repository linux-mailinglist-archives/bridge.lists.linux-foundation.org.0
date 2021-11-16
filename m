Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE8452FB2
	for <lists.bridge@lfdr.de>; Tue, 16 Nov 2021 12:02:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC71B4045A;
	Tue, 16 Nov 2021 11:02:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e2kfF4vKF4IX; Tue, 16 Nov 2021 11:02:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 40D774045F;
	Tue, 16 Nov 2021 11:02:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D511CC0032;
	Tue, 16 Nov 2021 11:02:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D589FC0012
 for <bridge@lists.linux-foundation.org>; Tue, 16 Nov 2021 11:02:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B23954021C
 for <bridge@lists.linux-foundation.org>; Tue, 16 Nov 2021 11:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="FMvhaX4k";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="xrfnTvU+"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxlq9ZujD4T6 for <bridge@lists.linux-foundation.org>;
 Tue, 16 Nov 2021 11:02:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06F144012F
 for <bridge@lists.linux-foundation.org>; Tue, 16 Nov 2021 11:02:33 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1637060552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=e10OOvD1u94xS1GIboSwL6Wuc+WCr9I2DZUFe4rpbtc=;
 b=FMvhaX4kB8DiRB3Y0+aRBO2m9ILwQaDzzDjIuuSP7ybiynoiE7y+6vlCC0ffCgB5whAKqe
 wji6zoUFSUOj7qtaa9jJO92IX6CGn+HzUND7MvTYKf6XXyNbgGmASYzWdxLBsVSwDrFbPE
 ExWt2gPdx9ads9cBqdWycGs8i4a9e4+EPfZXsHfAkll8oDNqcxB3X9Alz3AOBI8aFDgRyV
 g6W5S0uSIV5eq3mIgLYLAfR1J9MSXb66VHr4dXtSWLPCQTWdPF08FhwgCkgQwKLr8zFwON
 EV4gBz5D+so8mPYqvkD6Xs4bXDulCIvYPWbdfNNVtn9OA9BCfTGUBG15/DLnGw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1637060552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=e10OOvD1u94xS1GIboSwL6Wuc+WCr9I2DZUFe4rpbtc=;
 b=xrfnTvU+0HOOavO+mLbWCo6RkmxZo0uconkWrKQSXfBhww+JwGZuCctDNbyFBwDbkOsNpE
 QDV03R1dWmSrL9BQ==
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20211116102138.26vkpeh23el6akya@skbuf>
References: <871r3gbdxv.fsf@kurt> <20211116102138.26vkpeh23el6akya@skbuf>
Date: Tue, 16 Nov 2021 12:02:31 +0100
Message-ID: <87y25o9xdk.fsf@kurt>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] RFC: PTP Boundary Clock over UDPv4/UDPv6 on Linux
	bridge
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

--=-=-=
Content-Type: text/plain

On Tue Nov 16 2021, Vladimir Oltean wrote:
> This should do the trick as well?
>
> /sbin/ebtables --table broute --append BROUTING --protocol 0x88F7 --jump DROP
>
> /sbin/ebtables --table broute --append BROUTING --protocol 0x0800 --ip-protocol udp --ip-destination-port 320 --jump DROP
> /sbin/ebtables --table broute --append BROUTING --protocol 0x0800 --ip-protocol udp --ip-destination-port 319 --jump DROP
>
> /sbin/ebtables --table broute --append BROUTING --protocol 0x86DD --ip6-protocol udp --ip6-destination-port 320 --jump DROP
> /sbin/ebtables --table broute --append BROUTING --protocol 0x86DD --ip6-protocol udp --ip6-destination-port 319 --jump DROP

After quick test, indeed it does. Thanks, problem solved.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmGTj8cTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRB5KluBy5jwpgo2D/9ijxk4btdfvAuyAOy2VgeGlA78Ly1D
CKC8U6MlRW56YdY1u92mwKzJS7o2Bef3I8Lb2Axemg6WGpzIG7fMMlVd+Dfa39/v
957Z+XcwD50JsfARhDwQkpx841UN0N5QjFL2eHTIpZ1iIGv6++6rQcYv72jxUHpC
MopX8ahmqP6LkFMmoIc7oSCJJTGhjMCNGzbuBoRHddxYh+alT/v9EyZyx6WflCWT
w3wt2u8fVyIDty+SwD0Ktyvi9X9tbOY3yFjPU40KrXdvtUGnqFTT1IHQ5Kch7v8Z
mdydY23AkKcdT02GHiV+IylaAsUx2UUVSGbgLoWu8bXoxY92xDvjeFiGhdPcLbnV
RiMjeQdZ5AAdxaFDdLP45OHqhmnDNydp3gnRQizbNRdNgVuvy7JL4I2gnOYl0zuM
e/ZEWL0dyoaoTOwN/L87phQtykopion5VVyj8z0RZN/x0zxjiUS3Vnud3/Os34+9
J/ohMiiF0DJmWj+xtufuaCvz2EgvIDPiRYIm5oY+IMyM2gGkhpbauNKStQGFuP7x
tc5J/LHdcxatVxV8THPFzuM5dWS1U/pn/TCgDqmtVk6Fb0lJhn7bMVhf0jYJei/R
Vv0bHlVAj0XfQeu0xEnjHIczx2AnnI4UEa4txKxkWFnk8CuL4mahXdiUoN5sVhn/
e3xs4ArAMUKVUQ==
=hk+a
-----END PGP SIGNATURE-----
--=-=-=--
