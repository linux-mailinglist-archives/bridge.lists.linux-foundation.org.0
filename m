Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394DA28AED2
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 09:11:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B509F86FFD;
	Mon, 12 Oct 2020 07:11:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QLCecSUa62+W; Mon, 12 Oct 2020 07:11:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E3B385472;
	Mon, 12 Oct 2020 07:11:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0B9E7C0051;
	Mon, 12 Oct 2020 07:11:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29DBCC0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 07:11:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0E06885A88
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 07:11:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ud2qz4I4LCQZ for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 07:11:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m42-4.mailgun.net (m42-4.mailgun.net [69.72.42.4])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A564485868
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 07:11:26 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1602486691; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=JAOckvyZSGiRSyfXilzxRRUkdvcueb1oRO7CQ0IBXN0=;
 b=YcLTF1ZptYkPIexT5e2wfTHEN5cz0vL4TxeLTWvrRI33MWlNQqZe6hYNoGxTt/ZSgzu5JgyR
 TyztzQf/kcEd/wlfNrpIInBMGPQrakay/NeLlKP5cPxRlPhXYQMO3h7DmtV7ksB45tu1Qd5Z
 rjtRWo05o4k/T9gJHvz7n/s8X2M=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyIzNTQ4NSIsICJicmlkZ2VAbGlzdHMubGludXgtZm91bmRhdGlvbi5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 5f84017de9e942744c32f416 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 12 Oct 2020 07:10:53
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 74228C43385; Mon, 12 Oct 2020 07:10:52 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 44889C433CB;
 Mon, 12 Oct 2020 07:10:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 44889C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
References: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
 <a4fa20e9-23bc-4f2f-cbe9-16d801ce3b20@gmail.com>
Date: Mon, 12 Oct 2020 10:10:43 +0300
In-Reply-To: <a4fa20e9-23bc-4f2f-cbe9-16d801ce3b20@gmail.com> (Heiner
 Kallweit's message of "Sun, 11 Oct 2020 21:40:10 +0200")
Message-ID: <87sgajzzpo.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
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
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Oliver Neukum <oneukum@suse.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 David Miller <davem@davemloft.net>,
 =?utf-8?Q?Bj=C3=B8rn?= Mork <bjorn@mork.no>
Subject: Re: [Bridge] [PATCH net-next 06/12] qtnfmac: use new function
	dev_fetch_sw_netstats
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

I assume this goes via net-next so:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
