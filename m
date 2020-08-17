Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E64EE24E91F
	for <lists.bridge@lfdr.de>; Sat, 22 Aug 2020 19:46:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3E6D87DF2;
	Sat, 22 Aug 2020 17:46:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tKXzAlDdSne5; Sat, 22 Aug 2020 17:46:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 158AE87E1D;
	Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 03160C07FF;
	Sat, 22 Aug 2020 17:45:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9404FC0051
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 13:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C23985F4E
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 13:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hkrz9tviK4Cf for <bridge@lists.linux-foundation.org>;
 Mon, 17 Aug 2020 13:35:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from canardo.mork.no (canardo.mork.no [148.122.252.1])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6E42485F66
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 13:35:49 +0000 (UTC)
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 07HDZdht017376
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Mon, 17 Aug 2020 15:35:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1597671339; bh=BNq9CJTGRTFMT1lObPrCJUSkmDJn6crINo1uuxFU4b0=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=XrsCWJBNvNL9b1DmD3AxQjc9nLE01+xCc5/6j1RYxGn70uVRNhFDEZDexTfITEPU4
 mRoSItYuj9+y+ywq9uw3koXWvR7Ns1Eh3+Mlg8L5XLemunjHGy5lPjCPAssowSVrbR
 G+jVNSgNYsVqydXHI1FVE5H9srXFWwcoRl/u9G7M=
Received: from bjorn by miraculix.mork.no with local (Exim 4.94)
 (envelope-from <bjorn@mork.no>)
 id 1k7fIY-001DbE-Lp; Mon, 17 Aug 2020 15:35:38 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Sven Eckelmann <sven@narfation.org>
Organization: m
References: <20200816202424.3526-1-linus.luessing@c0d3.blue>
 <87zh6t650b.fsf@miraculix.mork.no> <1830568.o5y0iYavLQ@sven-edge>
Date: Mon, 17 Aug 2020 15:35:38 +0200
In-Reply-To: <1830568.o5y0iYavLQ@sven-edge> (Sven Eckelmann's message of "Mon, 
 17 Aug 2020 15:17:37 +0200")
Message-ID: <87blj95r9x.fsf@miraculix.mork.no>
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
Subject: Re: [Bridge] [gluon] Re: [RFC PATCH net-next] bridge: Implement MLD
	Querier wake-up calls / Android bug workaround
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

Sven Eckelmann <sven@narfation.org> writes:
> On Monday, 17 August 2020 10:39:00 CEST Bj=C3=B8rn Mork wrote:
>> Linus L=C3=BCssing <linus.luessing@c0d3.blue> writes:
> [...]
>> This is not a bug.  They are deliberately breaking IPv6 because they
>> consider this a feature.  You should not try to work around such issues.
>> It is a fight you cannot win.  Any workaround will only encourage them
>> to come up with new ways to break IPv6.
>
> Who are "they" and

Google.

> where is this information coming from?

I made it up.

> And what do they gain from breaking IPv6?

Battery time.

> Wouldn't it be easier for them just to disable IPv6=20
> than adding random looking bugs?

You would think so.

If it isn't clear, I am hoping to provoke them to re-classify the
"feature" as a bug and fix it.  That's what it takes to prove I am wrong.
Should be easy-peasy.



Bj=C3=B8rn
