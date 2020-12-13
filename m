Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B782D8B34
	for <lists.bridge@lfdr.de>; Sun, 13 Dec 2020 04:49:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E97685D92;
	Sun, 13 Dec 2020 03:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TGIecxGUJIPl; Sun, 13 Dec 2020 03:49:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 896D585D94;
	Sun, 13 Dec 2020 03:49:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D877C0FA7;
	Sun, 13 Dec 2020 03:49:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2BD71C013B
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:49:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1ADAA872A3
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:49:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1WgrlMcpchIK for <bridge@lists.linux-foundation.org>;
 Sun, 13 Dec 2020 03:49:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 799A4870C0
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:49:39 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id p126so15103812oif.7
 for <bridge@lists.linux-foundation.org>; Sat, 12 Dec 2020 19:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QE8kvUfJGF+/tFxP2a7cjpaKSjXf6+aoJtP3goq60E8=;
 b=FxDybe6qZY0cVdUS6zEjz2Kig7c/aw/0vQ9uFAhhVTX5qCeQ4PldrHo6OcbKoMO6/c
 wgmGI0A+ypYSkoiG2bZp9LM0wXCzGbldKot7nZ0Ohx7xLenhLUAmoEXG0Zp0hthrKOye
 6ehYmXkOpC6r7CdexxjIPU9/PCFn59uKuMo+ps1vLzMf7MczFknbxs0pgoh4MlLg/Crt
 4MEr764TbawspH662uTEU/w2p+9165jNTSRCmNgLdHVsFQBsI42uTktL3edf/bzm90Ho
 xBxXniDsxjOqy1X9M1JWaYroo2tsf2o5ou8HJJzPd2cB/xm3yHmtvVWHJ67BImvJeiDC
 BYxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QE8kvUfJGF+/tFxP2a7cjpaKSjXf6+aoJtP3goq60E8=;
 b=pg/gJTtxv+qjmY4B39hDgT0SKZeg5ssySj6cCWYD+tfKQq3gptWfj5gkQ1B3XNZTRr
 9tkcYtesnrA7UxsGV7Lj+Ev2+dHH6j1YuQy3mkpy4PRyKGZX87E75JvL35ruf0Mwacu2
 IZ1NdJwCAzWeXepMGEFlOjT/xYWiysW/Mx13ddmqZ1AhRbbNEaHNmnfIYnZAuVHs2lkm
 uDFWFsmSL5LMvNIDqLmxSJdcSDVI3U2JfH9yWbd1izrcyhNQIbFEmxqFGO8EHagbGahY
 3dJkWmbTSNxpfF78SAXKA+AQZGQ/IhjbBq8OvtkWDfTvx3W/FqowB0WrESsJdT0BNloV
 l4dw==
X-Gm-Message-State: AOAM530T/d/+1JIt4fAgei5+QyTTd2k77kxNuX4apKGTvNBlwkofPkoL
 yJQRwbrdlHF4CjMA7uJJGTc=
X-Google-Smtp-Source: ABdhPJxE7W1vVg6+OwzP+sCKUSQQ2AzZkPGpfAJs2/BtLTtAfvg4hE+4uWm0lq9fTvrdVaFfMpouJA==
X-Received: by 2002:aca:dc85:: with SMTP id t127mr14560421oig.19.1607831378772; 
 Sat, 12 Dec 2020 19:49:38 -0800 (PST)
Received: from ?IPv6:2600:1700:dfe0:49f0:5c21:b591:3efd:575e?
 ([2600:1700:dfe0:49f0:5c21:b591:3efd:575e])
 by smtp.gmail.com with ESMTPSA id i25sm3158888oto.56.2020.12.12.19.49.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 12 Dec 2020 19:49:38 -0800 (PST)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20201213024018.772586-1-vladimir.oltean@nxp.com>
 <20201213024018.772586-7-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <77d952ad-0aed-8e79-df03-ee6a7f42ef55@gmail.com>
Date: Sat, 12 Dec 2020 19:49:34 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201213024018.772586-7-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marek Behun <marek.behun@nic.cz>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v2 net-next 6/6] net: dsa: ocelot: request DSA
 to fix up lack of address learning on CPU port
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



On 12/12/2020 6:40 PM, Vladimir Oltean wrote:
> Given the following setup:
> 
> ip link add br0 type bridge
> ip link set eno0 master br0
> ip link set swp0 master br0
> ip link set swp1 master br0
> ip link set swp2 master br0
> ip link set swp3 master br0
> 
> Currently, packets received on a DSA slave interface (such as swp0)
> which should be routed by the software bridge towards a non-switch port
> (such as eno0) are also flooded towards the other switch ports (swp1,
> swp2, swp3) because the destination is unknown to the hardware switch.
> 
> This patch addresses the issue by monitoring the addresses learnt by the
> software bridge on eno0, and adding/deleting them as static FDB entries
> on the CPU port accordingly.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
