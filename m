Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A923CCC26
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 04:17:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBE38400EA;
	Mon, 19 Jul 2021 02:17:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TmuEu9v0pllK; Mon, 19 Jul 2021 02:17:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 82A25400E0;
	Mon, 19 Jul 2021 02:17:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 42357C0022;
	Mon, 19 Jul 2021 02:17:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ADE64C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8443F40410
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GLDRFBLzsC51 for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 02:17:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com
 [IPv6:2607:f8b0:4864:20::32b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FA7440301
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:17:00 +0000 (UTC)
Received: by mail-ot1-x32b.google.com with SMTP id
 f93-20020a9d03e60000b02904b1f1d7c5f4so16704615otf.9
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 19:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=w7nShgb27jDKQVYMgG8IWKFdPwetpVboImcgOULQ/YY=;
 b=qR9Hpg7hczMNvHldptKxCfeB8bnltYjFNGAOrpLxJ0fjxgsH0TEcXKePOdb0+4zHhx
 i+CbS7QUfObSIbiml7hczxclRzY0HSE1+3QEDRu17782crlKU5YHbbRMy3vimhwu7APq
 eSh0AvLSGFINfmH/bt9Xw+HZgWKFII+zKS8wSJxw63AzKMi8CcnpY5iDwUqWKAFBpRXw
 4MxbuC+h8CsW2voXsxUCTtzZj78VTwScpq36K4/bckp5+LqbfEetWhMdY+29w48N9BcK
 k3nmrYVGECTm4vHQB9c5tHTlVz6TWXsb+5eScLxNFBWGkIfU050wQZY36WcQnvvrj8ZR
 oPTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w7nShgb27jDKQVYMgG8IWKFdPwetpVboImcgOULQ/YY=;
 b=iUI7Oz3Rjm8V9IzYCWGcaUdLneJQiCIEzpq2w0ASxEd19cS6sO7Pn71HQon3xwVo2J
 9z/lR0BFKcvZ9rOfn1ERZf3ENx7a5CByegMbYYkGmpmyQtqknRh6BZLT9RCDFKtCulNq
 aJ/BgVQM0rpiAFEtjrjJpA04uUfU00zKRn3qJ33R7fl19X/vWYIrmQxNlezs5iS16sPY
 5G2V4LWqTljZ/MNSevdmUorfY8wpNYiNXnF1p0jhklOpx09wNPE4w+3pLnvT/FaeuH3f
 LL3y9O5vs/f4gS3ZAvY9ZSX/H13lWtTn2qStMUjc//WQf7lNnRE/93V+x1s9dkaHoz0u
 O4LQ==
X-Gm-Message-State: AOAM53341Gjd4UJbYtwL9rFWwEcZ16Ana7dSAdoni86oH0wm0LRTD37q
 K2CGXGWZ7e6Wgfz6nhvrdpk=
X-Google-Smtp-Source: ABdhPJw3Z0O9xpMZ/9kBd85A56qzTvgp3b9GEbiY8M7MHmazE8vsqz12+pQmXSH8lkgoTbtDMYWxZQ==
X-Received: by 2002:a9d:6ad4:: with SMTP id m20mr17288876otq.338.1626661019135; 
 Sun, 18 Jul 2021 19:16:59 -0700 (PDT)
Received: from ?IPv6:2600:1700:dfe0:49f0:49e1:751f:b992:b4f3?
 ([2600:1700:dfe0:49f0:49e1:751f:b992:b4f3])
 by smtp.gmail.com with ESMTPSA id t10sm3381730otd.73.2021.07.18.19.16.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Jul 2021 19:16:58 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-5-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <64fc7812-3c86-14ad-8245-ed84fc488b95@gmail.com>
Date: Sun, 18 Jul 2021 19:16:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210718214434.3938850-5-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 04/15] mlxsw: spectrum: refactor
 leaving an 8021q upper that is a bridge port
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



On 7/18/2021 2:44 PM, Vladimir Oltean wrote:
> For symmetry with mlxsw_sp_port_lag_leave(), introduce a small function
> called mlxsw_sp_port_vlan_leave() which checks whether the 8021q upper
> we're leaving is a bridge port, and if it is, stop offloading that
> bridge too.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
