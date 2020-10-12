Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8159928AE52
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 08:48:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03F7085817;
	Mon, 12 Oct 2020 06:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OqTIh_pFJ0eW; Mon, 12 Oct 2020 06:48:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9A8F850AD;
	Mon, 12 Oct 2020 06:48:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AFB38C0051;
	Mon, 12 Oct 2020 06:48:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 17B2FC0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 06:48:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 045D1204E1
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 06:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hcH-UYm-uXhV for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 06:48:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from canardo.mork.no (canardo.mork.no [148.122.252.1])
 by silver.osuosl.org (Postfix) with ESMTPS id 91E5220774
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 06:48:07 +0000 (UTC)
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 09C6lRMn030659
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Mon, 12 Oct 2020 08:47:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1602485253; bh=EM7SRTw2y1jyItrWLGnDOK3doiCpFc3aZvBKNU44DDM=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=kS4WJ5liWgVBV/PZX+XguD8kCe6CzMV/SozNJtRSLrEKROlT0lTnXLxcEgUI/lHdQ
 9tYB5Ub5nfYwmhAFrio3yOnThkWaMB2+jpHWpbr4jiJ7rdoEAKWTMxqcxuu7E30hua
 P5LK3vjH6VIkjZp2gBCjFgbQ19M2Yxa9QIgJzGaw=
Received: from bjorn by miraculix.mork.no with local (Exim 4.94)
 (envelope-from <bjorn@mork.no>)
 id 1kRrcE-001O96-2I; Mon, 12 Oct 2020 08:47:26 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Heiner Kallweit <hkallweit1@gmail.com>
Organization: m
References: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
 <9cde03fe-d032-521d-2d34-34429d6d1a1c@gmail.com>
Date: Mon, 12 Oct 2020 08:47:25 +0200
In-Reply-To: <9cde03fe-d032-521d-2d34-34429d6d1a1c@gmail.com> (Heiner
 Kallweit's message of "Sun, 11 Oct 2020 21:38:44 +0200")
Message-ID: <87imbgdjpe.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Virus-Scanned: clamav-milter 0.102.4 at canardo
X-Virus-Status: Clean
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Sergey Matyukevich <geomatsi@gmail.com>, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, Pravin B Shelar <pshelar@ovn.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Kalle Valo <kvalo@codeaurora.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Oliver Neukum <oneukum@suse.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 David Miller <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 04/12] net: usb: qmi_wwan: use new
	function dev_fetch_sw_netstats
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

Heiner Kallweit <hkallweit1@gmail.com> writes:

> Simplify the code by using new function dev_fetch_sw_netstats().
>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Acked-by: Bj=C3=B8rn Mork <bjorn@mork.no>
