Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 884A167FDC4
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 10:11:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C251560B12;
	Sun, 29 Jan 2023 09:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C251560B12
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=slB4v7Gf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9AW-Rgm3MPO3; Sun, 29 Jan 2023 09:11:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 69AA360AD0;
	Sun, 29 Jan 2023 09:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69AA360AD0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 166CDC0078;
	Sun, 29 Jan 2023 09:11:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EF4EBC002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CAFEB4012D
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAFEB4012D
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=slB4v7Gf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LxHZS6HK6Lyn for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 09:11:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3130D400EC
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3130D400EC
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:11:13 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id bk15so24110155ejb.9
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 01:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/RrG8+2GzDsOsAIBF6eDzsvs9rII5iqkY1XaHqvkNRg=;
 b=slB4v7GfVVCDKkd+LJ+iBUuWRbUMJzf+9V/umfjvfn8r/EK/HE2dtoLYOvczDJl4AT
 W2alqhgdM1dfXBd8EDCgdSKkUtWcv9QNOpf9Mn1pi2wiJ3uUbb1GPB6cmNv2cXq3bYy/
 Co+Emm+vLCcV4V+j16kQd6sGcpP2nuSN2lZJ7x1PY1kw5OjkaNeOzCeYnPP25Q/H1bgR
 /X54LttEtS0bqwqhNFPHV8vjcX/MZzHAeZRPGahxKaun4MgZvgFJZ5bG8+xsl0eWUOsj
 cBphYCbGP72AcAAcDYcV/FAviHdfUzdU6Yv3yF/VqDrzH3WaQ6/6RCt55+9H98Y193Dd
 vVXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/RrG8+2GzDsOsAIBF6eDzsvs9rII5iqkY1XaHqvkNRg=;
 b=NoBPv/ArMYnEu/mUdGdQroN7H76Vx7j3QerSBmem14bFiU1HbCBHbhK818HN3QGyZc
 vd25W7cs0mxqaXEHUSDUwFwISkTtv/dzddQYoZSeDbFfb+kruy46yTme9KoGd0S6pGHx
 EoBrxoCRmUk950lnfY5ci4KS+WF+XcjrZphrsIrd1Mz0Y2LkIwPmdvftAkYBVUv+bjaR
 2h3Yon4VF48+/6+pSn7L8sdNA8XbNkmdPiBzYasgSbLHmjQuRmTbY0OTroqK+cM9Dewq
 RwP0kWCbd7EEMWnNbjtbBoYpraTXZUr+UGeE2hqaL1YE9chBf3L64+lvyLVGUoQYiBnH
 rr4Q==
X-Gm-Message-State: AFqh2koHJ5w3mgn/iAfl9vHReLWcXK6ag3/6IgHw6TZtUU6lmBngFfQg
 Gku8yDmUXBloQt+ObcOv9cWMqw==
X-Google-Smtp-Source: AMrXdXtdgPdpiT8m7xlb7FaVRLf9lqQZIsBZ3pOQZx95/5iYXJp9QBinPvbnALRe4PJ3NLRA5PiecQ==
X-Received: by 2002:a17:907:88cd:b0:859:5541:f3ff with SMTP id
 rq13-20020a17090788cd00b008595541f3ffmr54286534ejc.32.1674983471373; 
 Sun, 29 Jan 2023 01:11:11 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 lv1-20020a170906bc8100b00883ec4c63e0sm1747321ejb.142.2023.01.29.01.11.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 01:11:11 -0800 (PST)
Message-ID: <d4190cd6-f90f-ac51-1c1e-ddd0880e932c@blackwall.org>
Date: Sun, 29 Jan 2023 11:11:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <982c17c28b513bd3e6dd670fa2db13ec76bc4460.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <982c17c28b513bd3e6dd670fa2db13ec76bc4460.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 04/16] net: bridge: Add
 br_multicast_del_port_group()
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

On 26/01/2023 19:01, Petr Machata wrote:
> Since cleaning up the effects of br_multicast_new_port_group() just
> consists of delisting and freeing the memory, the function
> br_mdb_add_group_star_g() inlines the corresponding code. In the following
> patches, number of per-port and per-port-VLAN MDB entries is going to be
> maintained, and that counter will have to be updated. Because that logic
> is going to be hidden in the br_multicast module, introduce a new hook
> intended to again remove a newly-created group.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c       |  3 +--
>  net/bridge/br_multicast.c | 11 +++++++++++
>  net/bridge/br_private.h   |  1 +
>  3 files changed, 13 insertions(+), 2 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


