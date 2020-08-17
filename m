Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FE224E920
	for <lists.bridge@lfdr.de>; Sat, 22 Aug 2020 19:46:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D11F486444;
	Sat, 22 Aug 2020 17:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pX_F4m0Izf25; Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86CBB85C7A;
	Sat, 22 Aug 2020 17:45:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7599FC07FF;
	Sat, 22 Aug 2020 17:45:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 79D47C0051
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 08:51:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 64853204C1
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 08:51:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dj54EBEPAqeE for <bridge@lists.linux-foundation.org>;
 Mon, 17 Aug 2020 08:51:04 +0000 (UTC)
X-Greylist: delayed 00:11:45 by SQLgrey-1.7.6
Received: from canardo.mork.no (canardo.mork.no [148.122.252.1])
 by silver.osuosl.org (Postfix) with ESMTPS id 7D47920410
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 08:51:04 +0000 (UTC)
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 07H8d1J3030318
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Mon, 17 Aug 2020 10:39:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1597653542; bh=C95bbW+7kVubfEbltvr0JMBVnM229YdJIYgB0IKch3U=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=VxX7anktq06S5xmTlfzi/rr01Q++/cCS/cHmPzjvLhkAPtxJw24wGCkdy2oO1mf8c
 KH9dQ/nzmoku1bVNeTYPuzWfBJpjNpAX4f7/7zEyI/v57hekWq+GR93w4dGJaKqusz
 l7Qj7Z0QMZ9Oy4azQdyEUsZsypudV/igvysXABhc=
Received: from bjorn by miraculix.mork.no with local (Exim 4.94)
 (envelope-from <bjorn@mork.no>)
 id 1k7afU-0018j8-RL; Mon, 17 Aug 2020 10:39:00 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
Organization: m
References: <20200816202424.3526-1-linus.luessing@c0d3.blue>
Date: Mon, 17 Aug 2020 10:39:00 +0200
In-Reply-To: <20200816202424.3526-1-linus.luessing@c0d3.blue> ("Linus
 =?utf-8?Q?L=C3=BCssing=22's?= message of "Sun, 16 Aug 2020 22:24:24 +0200")
Message-ID: <87zh6t650b.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Virus-Scanned: clamav-milter 0.102.4 at canardo
X-Virus-Status: Clean
X-Mailman-Approved-At: Sat, 22 Aug 2020 17:45:56 +0000
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 gluon@luebeck.freifunk.net, openwrt-devel@lists.openwrt.org,
 "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH net-next] bridge: Implement MLD Querier
	wake-up calls / Android bug workaround
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

Linus L=C3=BCssing <linus.luessing@c0d3.blue> writes:

> Currently there are mobile devices (e.g. Android) which are not able
> to receive and respond to MLD Queries reliably because the Wifi driver
> filters a lot of ICMPv6 when the device is asleep - including
> MLD. This in turn breaks IPv6 communication when MLD Snooping is
> enabled. However there is one ICMPv6 type which is allowed to pass and
> which can be used to wake up the mobile device: ICMPv6 Echo Requests.

This is not a bug.  They are deliberately breaking IPv6 because they
consider this a feature.  You should not try to work around such issues.
It is a fight you cannot win.  Any workaround will only encourage them
to come up with new ways to break IPv6.


Bj=C3=B8rn
