Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 192BA28B5AC
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 15:13:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C138286B74;
	Mon, 12 Oct 2020 13:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vNQLIETRCO4r; Mon, 12 Oct 2020 13:13:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40B5886B42;
	Mon, 12 Oct 2020 13:13:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1AD34C0051;
	Mon, 12 Oct 2020 13:13:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B0A4FC0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:13:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9F892874C0
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:13:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A0jfA8vmSyIC for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 13:13:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2622A872A0
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602508380; x=1634044380;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WDNT8T0chASPmyuQTDcnmhl3GRuR4J/TIt+goiJGxHc=;
 b=cShTrUwyhlwIinKqzMf46ngu4thJ5t5NDQEP42mDm+BHz18azEo09E4L
 gbGvG9NE0FAfhWP1gYiGcuq43wI9ycj7UrL4VbWpufrLr6EV1DSg171LE
 xl3fQA/YAJytjuT/YeCvQ1nyeWPyRrGhJX2oN9jlSI5tMJvyywgdttOmL
 lxBhEeUPuuFIQH6AYmzCy3WJY1rvd2aJUVuN0w8/bRAZGfHq5Z2+rGF21
 VOqrNc2+GDGC43ZXpxv0CyHcKop4HMGcdPUdAOrXI7BseNpE5a55Ojbkn
 Ykf7V/Bnvquqv4OFpvSmcPG0gjYNoMS5o6FZTqdQD3hV/IWh7wEpTsGz7 w==;
IronPort-SDR: jMAa8hS83ioD4sD46XKD3RoH7LywRyVayGQX1U+vaezL7QA25B5lS8nFCQBejZI/zeVq8uScE2
 5zNdKxY+7g0bILYTevndOj3+NKVyXk9pX3rTPxB6rbCfj0LTHvlGOH9sIsdh6WQnGOkNj6xIsU
 CE68sDrBqkHz9xQ1xO/6nxHXA7uKK442u7MzIxA/JP/gFPrpu4JGoDUBizY8r/LlgH0v74tUNt
 S9DQBWvRKK+W7m8pagLb3RQLd0WA4mLXURkaZ1LnAGXP5EDqUjBzHHHL4e7kq3T+IiRFVjNptA
 pMw=
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="94260662"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Oct 2020 06:13:00 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 12 Oct 2020 06:12:59 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 12 Oct 2020 06:12:59 -0700
Date: Mon, 12 Oct 2020 13:11:13 +0000
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20201012131113.p54op2ku7r4l54bv@soft-test08>
References: <20201009143530.2438738-1-henrik.bjoernlund@microchip.com>
 <20201009143530.2438738-7-henrik.bjoernlund@microchip.com>
 <2ec76c98813c8190ced9e34b70b46d2dad94d714.camel@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <2ec76c98813c8190ced9e34b70b46d2dad94d714.camel@nvidia.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "idosch@mellanox.com" <idosch@mellanox.com>,
 "jiri@mellanox.com" <jiri@mellanox.com>, Roopa Prabhu <roopa@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "horatiu.vultur@microchip.com" <horatiu.vultur@microchip.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 06/10] bridge: cfm: Kernel space
 implementation of CFM. CCM frame RX added.
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
From: "henrik.bjoernlund--- via Bridge" <bridge@lists.linux-foundation.org>
Reply-To: "henrik.bjoernlund@microchip.com" <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thanks for the review.

The 10/09/2020 21:52, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Fri, 2020-10-09 at 14:35 +0000, Henrik Bjoernlund wrote:
> > This is the third commit of the implementation of the CFM protocol
> > according to 802.1Q section 12.14.
> >
> > Functionality is extended with CCM frame reception.
> > The MEP instance now contains CCM based status information.
> > Most important is the CCM defect status indicating if correct
> > CCM frames are received with the expected interval.
> >
> > Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
> > Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
> > ---
> >  include/uapi/linux/cfm_bridge.h |  10 ++
> >  net/bridge/br_cfm.c             | 269 ++++++++++++++++++++++++++++++++
> >  net/bridge/br_private_cfm.h     |  32 ++++
> >  3 files changed, 311 insertions(+)
> >
> 
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> 

-- 
/Henrik
