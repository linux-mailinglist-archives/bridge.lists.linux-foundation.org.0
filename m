Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E88D4DC237
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 10:01:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9BFF4000B;
	Thu, 17 Mar 2022 09:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i_A_QW8n8NjK; Thu, 17 Mar 2022 09:01:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2D91A4014C;
	Thu, 17 Mar 2022 09:01:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E5D0BC0073;
	Thu, 17 Mar 2022 09:01:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D8293C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:01:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C46C14014C
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tXRDptfRN3Ui for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 09:01:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D34144000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:01:47 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id h1so5686150edj.1
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 02:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=HtMS2+9V7qd6zUhJqmshIHceW7JGRRmz5hCKeup/FwU=;
 b=v1E7SzBfSt8587wvWB/smgDMZ9JEHt+ZoQNwOn2uA49pYqLeUsEf7felGz0ynrFCTS
 Ti6vYpZHB2JzO6+pYzVwPVQffy63WI+ZOLfXgGKBUkBeAALAOVtAOpDhKmoZYipOcbIU
 CtPpPvHUhDP81OKvzPH7kVJQ+uhR6M92XhPfqT/vIM5IrWl+QFCfYZ0v8TDfx/gMLTUj
 1tV8l9+DZRyAmp1s+HCBoTXinca+zvnDhe+4NiXFOUpx4Py90gI8tXCgFeF+DpVeyfqC
 /KqwuVs7uVIc9JUwSDFpYEYaCUTh3L1YqKugIfg0TiAlYaPH9MIMh076qLIpRJVjyXQ4
 w1qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=HtMS2+9V7qd6zUhJqmshIHceW7JGRRmz5hCKeup/FwU=;
 b=rf1KmdcNuCPl4rEXO/7HOKeYtqH/aUDoZQrTtLKCyiEU/y0n2yw8Sj5sY+yoTqJSrc
 Upqx4uDNS7sQftAWx1QDGjfBtOK7MiloZ3+Glf32C+rSYEEKwJGk4Y+CrNBrbHdXd9L6
 MnAo3wjDY4a1uIT8xzAXurMuRoXyD5KCL/h0LOaBE4lsktRq1bHPoL/W8dZ/l6rm6ZZm
 /CbjziUgnF/LV7OXEcbjTl711Gdb1v/oKoW3dBNBRZleQ/n+Wlf3CmDgmj8fs3MFs2nQ
 gmW/rjChQxm5vb6JapPm9+1pPrjeUtCI91Lh2RBOegg5qCdr3yrl7K2L0s1DAu92ewgN
 3gQw==
X-Gm-Message-State: AOAM533W/7f0wFsxdaZhIO0dAPNIzQL9ZZp0dwTU0l3RvR8LQQiSdJZw
 89xfmX1OKxC+tkAFjWl8APYe1g==
X-Google-Smtp-Source: ABdhPJyYIemM2BHyxfpYahkpXaN8TCf2fBTFDf2vdU/5njxqv1A5ML+sYwcBMhfT45A1gK26heBQtg==
X-Received: by 2002:a05:6402:28b2:b0:416:2b00:532 with SMTP id
 eg50-20020a05640228b200b004162b000532mr3305663edb.396.1647507705736; 
 Thu, 17 Mar 2022 02:01:45 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 d4-20020a1709067a0400b006d6e3ca9f71sm2081763ejo.198.2022.03.17.02.01.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 02:01:45 -0700 (PDT)
Message-ID: <0005fbf1-0c14-2ffe-617b-a770dcc1240c@blackwall.org>
Date: Thu, 17 Mar 2022 11:01:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-10-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220316150857.2442916-10-tobias@waldekranz.com>
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
Subject: Re: [Bridge] [PATCH v5 net-next 09/15] net: bridge: mst: Add helper
 to query a port's MST state
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
> This is useful for switchdev drivers who are offloading MST states
> into hardware. As an example, a driver may wish to flush the FDB for a
> port when it transitions from forwarding to blocking - which means
> that the previous state must be discoverable.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/linux/if_bridge.h |  6 ++++++
>  net/bridge/br_mst.c       | 25 +++++++++++++++++++++++++
>  2 files changed, 31 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

