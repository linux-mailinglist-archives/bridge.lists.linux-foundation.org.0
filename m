Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2C24DC209
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 09:57:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D10348474C;
	Thu, 17 Mar 2022 08:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WwQd692Tu5du; Thu, 17 Mar 2022 08:57:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7B73D8437D;
	Thu, 17 Mar 2022 08:57:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3FD4BC0073;
	Thu, 17 Mar 2022 08:57:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D5690C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5CFD8474C
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:57:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xILsI5QFCB87 for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 08:57:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71D9E8437D
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:57:39 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id p15so9234798ejc.7
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 01:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=IZV5DOXaMBCK1WqYO4leOyigBVsvYn+ptdXXPyZIhWM=;
 b=LBhEVWCr3VYIX8oZnOnGnf4o4J2WHcaNKXshvqkeyhDkH27yDexv8/kyFq7AxZVR0o
 sF55l/ZYgbybYCaTURyx3KRFpjMBU479zToX5ghT8P45PLVMEPxst1e0wbwWHkXSqotL
 aS0CptGgoLxyZ6cLY7x3vWUUOa0Nxrc1rt7ePaYkoI6YybSwpu0cGNxQdTDngMgySrbb
 1fq8olG+RAkRVMLI5/20f8Kpw5b9YuGvPYZ9J4hocMpG/JwodazOImzZn2MFkKvH4ryP
 EMEjFMURbz5tZy7jKDeJX2m1ZHwbynSmCTQKAnDBvgvT1CMhBPpmW5CNrQ0pzSP5Q0Yc
 tTiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=IZV5DOXaMBCK1WqYO4leOyigBVsvYn+ptdXXPyZIhWM=;
 b=zqLhiFiyWh8qNOGBBL4bkuAl3ShgP5TVKbKzqbLb1aPJ0tze3jwJfq2h8kXxfkSsxe
 MjSxOnAsLJO973foCCsnG9sUVRwLaKbN/VaFO0EajTGp4ZtFPYoVd+bBLNPKcNi2Z0Zw
 T5FPiD2269rfCzCpr1YP8w1Rssgx/FEdH8n7g5APio89seXDxZqWdwzhiII9BB4iZ/Ea
 ku9EG0pJns1gYVBN876OOGUQer97ZR+dsgoVub+hETFgoev9nrydmzcMzJDylgI6VZG+
 otnbkl1vxow2kUIaoWDBpI3XXFiPb/kUVFwsmVjTtN0vUjZH/5erirT9u4wF0ew41nyQ
 5MRA==
X-Gm-Message-State: AOAM531BwnbflSXEO6RdIk/zEVt+/3820Nk22QYBtvLuQQyVhTsc46nl
 jALhfmYdRxxJOAWXablwykQZOA==
X-Google-Smtp-Source: ABdhPJxtdYfTkcIKxU67mnEWBDliHgh3BMo3c7F67ZYdvBzfH9RtoV11Lw4hIamzG3WAvB0mK8mwsQ==
X-Received: by 2002:a17:907:94cb:b0:6da:8e01:8312 with SMTP id
 dn11-20020a17090794cb00b006da8e018312mr3166644ejc.7.1647507457445; 
 Thu, 17 Mar 2022 01:57:37 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 q7-20020a170906540700b006d5eca5c9cfsm2051537ejo.191.2022.03.17.01.57.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 01:57:37 -0700 (PDT)
Message-ID: <ed581b85-822b-c7bd-b614-fb87e918d314@blackwall.org>
Date: Thu, 17 Mar 2022 10:57:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-6-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220316150857.2442916-6-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v5 net-next 05/15] net: bridge: mst: Notify
 switchdev drivers of VLAN MSTI migrations
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

On 16/03/2022 17:08, Tobias Waldekranz wrote:
> Whenever a VLAN moves to a new MSTI, send a switchdev notification so
> that switchdevs can track a bridge's VID to MSTI mappings.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/net/switchdev.h   |  7 ++++++
>  net/bridge/br_mst.c       | 13 +++++++++++
>  net/bridge/br_switchdev.c | 46 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 66 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


