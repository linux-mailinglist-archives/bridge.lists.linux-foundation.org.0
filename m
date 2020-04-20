Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED37B1EC7C8
	for <lists.bridge@lfdr.de>; Wed,  3 Jun 2020 05:27:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EFB887E77;
	Wed,  3 Jun 2020 03:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uIaqE-vV4eQ0; Wed,  3 Jun 2020 03:27:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E7FE387E76;
	Wed,  3 Jun 2020 03:27:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DA63BC016E;
	Wed,  3 Jun 2020 03:27:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 65241C0177
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 04:03:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5CAEF863DE
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 04:03:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cW9In4zKMpan for <bridge@lists.linux-foundation.org>;
 Mon, 20 Apr 2020 04:03:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 832DD863D9
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 04:03:28 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id n10so9460664iom.3
 for <bridge@lists.linux-foundation.org>; Sun, 19 Apr 2020 21:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4yoSRAAq6ByLw23273SotPtzJ6Q/E4R2A/SjkRQDriw=;
 b=YXPZyWlH9RSSgnW5j4iBJYF58R50FLIv94XzPhsCL6y80GnIplmbo8VNoGUnNVX1Go
 q/RLTVUCtpjzdgWr8DqtYQXjJqiPUZKMk5EH11tX4xMI0VUtBICfyyWP7XoQfjzlWF1x
 MUSMdiYcJwUcGTW58A0DeGjHS6bbV16Z3Bvd/Xmr7O6ZqkIsgX+PEdjnwUAMeQSa33FV
 QcvCAKO550XbIg5IuuSpIrjH2CGQcHtR8QJlHR8l8UthPCOIM9xr82JA2t1b2UARa/NG
 RxNOCms/KgmbjQAnvWmhEQxJP9qeHQ13fnJkk5XxCF9nX1URKTmNnjQ1/xNK3AfTSfTZ
 eOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4yoSRAAq6ByLw23273SotPtzJ6Q/E4R2A/SjkRQDriw=;
 b=IKLhx4i795RngX5GjRDHIc7oURGzMgF2lYqcrC43IneRSB9hypYS7pOng9vBlm8Dp/
 bLLgWi9aLoeQQiWNBa4MOapRoDCq32wooRHKCVzdlnQ2ZT35Jekn+qzHqC1riGD4XCT/
 G3pFvTDir/XcZ+z7e0SH8pO6w1SPSBWKhjvB5ZgPIzP/EfPgB7FnG/YuzIOh1dV8YMcL
 gY0h4xdLzA0Gq2Uz8C2RhIHVgwJwgmMlHYhsP1axVSaVTkEu2g7PmLYZ4BovhuemcoyY
 YzAN1PYngJq/8QdHrqOqt0NBpEAksjtLbpYK2kC/Dhqpwj1sciCLxNVBw1gqE18XiUV4
 AM3g==
X-Gm-Message-State: AGi0Pubu1FA9ZsMioig/xB1npsVpYyRPGoe2ytnCyQW99Ucnm/4CBoU9
 /7/pv66HgYf2m3xMUYUvnya6nwGes28xWXck+Rg=
X-Google-Smtp-Source: APiQypJMt4EucyO5DjUhF21hrpwcxMWTMsFBN0PMmm/20bhWcTZAWzgIBuDBRsg9osY03LII7y3mPwdP13o0g/rMcKw=
X-Received: by 2002:a6b:8b05:: with SMTP id n5mr13906481iod.68.1587355407594; 
 Sun, 19 Apr 2020 21:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200419161946.19984-1-dqfext@gmail.com>
 <20200419164251.GM836632@lunn.ch>
In-Reply-To: <20200419164251.GM836632@lunn.ch>
From: DENG Qingfang <dqfext@gmail.com>
Date: Mon, 20 Apr 2020 12:03:17 +0800
Message-ID: <CALW65jYmcZJoP_i5=bgeWpcibzOmEPne3mHyBngE5bTiOZreDw@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 03 Jun 2020 03:27:25 +0000
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S . Miller" <davem@davemloft.net>,
 =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [RFC PATCH net-next] net: bridge: fix client roaming
 from DSA user port
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

On Mon, Apr 20, 2020 at 12:42 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Mon, Apr 20, 2020 at 12:19:46AM +0800, DENG Qingfang wrote:
> > When a client roams from a DSA user port to a soft-bridged port (such as WiFi
> > interface), the left-over MAC entry in the switch HW is not deleted, causing
> > inconsistency between Linux fdb and the switch MAC table. As a result, the
> > client cannot talk to other hosts which are on that DSA user port until the
> > MAC entry expires.
> >
> > Solve this by notifying switchdev fdb to delete the leftover entry when an
> > entry is updated. Remove the added_by_user check in DSA
> >
> > Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> > ---
> > I tried this on mt7530 and mv88e6xxx, but only mt7530 works.
> > In previous discussion[1], Andrew Lunn said "try playing with auto learning
> > for the CPU port" but it didn't work on mv88e6xxx either
>
> Hi Deng
>
> We should probably first define how we expect moving MAC to work. Then
> we can make any core fixes, and driver fixes.
>
> For DSA, we have assumed that the software bridge and the hardware
> bridge are independent, each performs its own learning. Only static
> entries are kept in sync.
>
> How should this separate learning work for a MAC address which moves?

When a client moves from a hardware port (e.g. sw0p1) to a software port (wlan0)
or another hardware port that belongs to a different switch (sw1p1),
that MAC entry
in sw0's MAC table should be deleted, or replaced with the CPU port as
destination,
by DSA. Otherwise the client is unable to talk to other hosts on sw0 because sw0
still thinks the client is on sw0p1.

Discussion in OpenWrt GitHub:
https://github.com/openwrt/openwrt/pull/2798#issuecomment-602221971


>
>     Andrew
