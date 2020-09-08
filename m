Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3732610BB
	for <lists.bridge@lfdr.de>; Tue,  8 Sep 2020 13:35:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2ED587297;
	Tue,  8 Sep 2020 11:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id USzT-4yBiT5b; Tue,  8 Sep 2020 11:35:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0447C87293;
	Tue,  8 Sep 2020 11:35:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DBE1CC0051;
	Tue,  8 Sep 2020 11:35:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 53F19C0051
 for <bridge@lists.linux-foundation.org>; Tue,  8 Sep 2020 11:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 36F9685A78
 for <bridge@lists.linux-foundation.org>; Tue,  8 Sep 2020 11:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LkPUN4DwCPQm for <bridge@lists.linux-foundation.org>;
 Tue,  8 Sep 2020 11:35:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC7FA85955
 for <bridge@lists.linux-foundation.org>; Tue,  8 Sep 2020 11:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1599564918; x=1631100918;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=F+j0JCQ1GOVdffMe15XLwWeslfZg0hQxxi1+nRfhBWA=;
 b=b/9r8RliauG8ySi18QSglOorfIKFf4nyk3gCRwptURrH5rNKxpjx5RAC
 iDNVjw+XRIpsRSaA/+XeWLQXNfbMnf/oi4w6EoMtsRlN8xB9eVq2Xs8J9
 de8eWv+iLmnykEW5+ZtL9vqbjSvD88b4BEmTTa0iQ/qbAbsWQ62NeIf9T
 Y+TAB39s7w05qRZ79m8EbqWTePVHBcYTYy+iLrGbzz5SFifKyxYt+G7Rz
 /jcYzTxiT5qf097tIrxaJPdAd5C+aK1786duIuliPt5S0w+i/tnvIlWkv
 PQdEPwMLNUwULR+vHNpNpIViJyuaede1YZ2QnXIMw7mXCXNyGf810t5sn Q==;
IronPort-SDR: UJwLxQvuqzI6LGuw+ZcNKEC8YY1cbiWNN1jw9hkfPBc15ECt57fXIKNF87X+91CTWoeakQp5Y/
 RkBY/39EGW9iU/VBjbvfE17VrReQ7tgOjNnmC41ElliW39jSfmKdW/eLhaBwhK6idhdfOTizZb
 txxCGTlnKakYI5A9+OXP+TrSrj3PtV6QmP8kjBnY5GhbDIm4uAli/m+WH/hvEfV4Dzf00Ip7vW
 QfKKx+xwVTvS2Fa2cnoLaAvS8UeGmGvAjcIcs7Ly8VkSRz9c7FEb+k/A5PDTZ32TvR7T2j/Fl5
 xMI=
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="94807242"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Sep 2020 04:35:10 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 8 Sep 2020 04:34:51 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 8 Sep 2020 04:34:37 -0700
Date: Tue, 8 Sep 2020 13:35:09 +0200
To: Henrik Bjoernlund - M31679 <Henrik.Bjoernlund@microchip.com>
Message-ID: <20200908113509.hvuknvmr54no2cy4@lx-anielsen.microsemi.net>
References: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
 <20200904154406.4fe55b9d@hermes.lan>
 <20200906182129.274fimjyo7l52puj@soft-dev3.localdomain>
 <b36a32dbf3b4b315fc4cbfdf06084b75a7c58729.camel@nvidia.com>
 <BY5PR11MB3928DF9AC75B8AEC2FBD2256ED290@BY5PR11MB3928.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <BY5PR11MB3928DF9AC75B8AEC2FBD2256ED290@BY5PR11MB3928.namprd11.prod.outlook.com>
Cc: "idosch@mellanox.com" <idosch@mellanox.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Horatiu Vultur - M31836 <Horatiu.Vultur@microchip.com>,
 "jiri@mellanox.com" <jiri@mellanox.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 UNGLinuxDriver <UNGLinuxDriver@microchip.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC 0/7] net: bridge: cfm: Add support for
 Connectivity Fault Management(CFM)
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
From: "Allan W. Nielsen via Bridge" <bridge@lists.linux-foundation.org>
Reply-To: "Allan W. Nielsen" <allan.nielsen@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Hi,

On 08.09.2020 11:04, Henrik Bjoernlund - M31679 wrote:
>>On Sun, 2020-09-06 at 20:21 +0200, Horatiu Vultur wrote:
>>> The 09/04/2020 15:44, Stephen Hemminger wrote:
>>> > On Fri, 4 Sep 2020 09:15:20 +0000 Henrik Bjoernlund
>>> > <henrik.bjoernlund@microchip.com> wrote:
>>Hi, I also had the same initial thought - this really doesn't seem to
>>affect the bridge in any way, it's only collecting and transmitting
>>information. I get that you'd like to use the bridge as a passthrough
>>device to switchdev to program your hw, could you share what would be
>>offloaded more specifically ?
>Yes.
>
>The HW will offload the periodic sending of CCM frames, and the
>reception.
>
>If CCM frames are not received as expected, it will raise an interrupt.
>
>This means that all the functionality provided in this series will be
>offloaded to HW.
>
>The offloading is very important on our HW where we have a small CPU,
>serving many ports, with a high frequency of CFM frames.
>
>The HW also support Link-Trace and Loop-back, which we may come back to
>later.
>
>>All you do - snooping and blocking these packets can easily be done
>>from user- space with the help of ebtables, but since we need to have
>>a software implementation/fallback of anything being offloaded via
>>switchdev we might need this after all, I'd just prefer to push as
>>much as possible to user-space.
In addition to Henriks comment, it is worth mentioning that we are
trying to push as much of the functionallity to user-space (learnings
from the MRP discussions).

This is why there are currently no in-kernel users of the CCM-lose
singnal. When a CCM-defect is happening the network typically needs to
be re-configured. This we are trying to keep in user-space.

>>I plan to review the individual patches tomorrow.
Thanks.

/Allan
