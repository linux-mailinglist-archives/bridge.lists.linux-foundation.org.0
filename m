Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A33CF4BC745
	for <lists.bridge@lfdr.de>; Sat, 19 Feb 2022 11:00:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D30540187;
	Sat, 19 Feb 2022 10:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sw0BI02Ai-Oh; Sat, 19 Feb 2022 10:00:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A50FC4014A;
	Sat, 19 Feb 2022 10:00:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 097A8C0073;
	Sat, 19 Feb 2022 10:00:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 30606C000B
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 10:00:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1094081839
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 10:00:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H_jmGxhk_4BB for <bridge@lists.linux-foundation.org>;
 Sat, 19 Feb 2022 10:00:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DD6D817AD
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 10:00:39 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id p9so20635311ejd.6
 for <bridge@lists.linux-foundation.org>; Sat, 19 Feb 2022 02:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eyoLzh3GoCjEcko6E6TRX3Q0MN5P8KHlKdLhPGSzjas=;
 b=nnddJEcHqLBBgfgW6X8nP2hJ+jbcGZujjBROoEt9DQKra/B8N1F3VqRROEaOdXzS1G
 TnmFhHNUyN5sK64vsVyWIaI5/IWYIRSDlRlHN9lO44vm9/RH205qjm0HVp0WDQBkojHS
 SxK7lXv9qPuxBw0h8IcrUN22V3RAYtX9gwDEXgiSTbwCKm6Cv+emuMeHX4pjOUOxLO1r
 SBJvros1knM0ArBLcFpYEDQBMbDEOjZyNBZZLUKg0Dh+l34NitpBj33SGW8TgzKLy4aU
 BUdMEoxEsM4NVFdyaStDhqIhtOms7cKP4Ae+XytJsnPBGISv5erc6kLo/q/y+6+jwYSL
 tJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eyoLzh3GoCjEcko6E6TRX3Q0MN5P8KHlKdLhPGSzjas=;
 b=iNnoYSoZYypsgPHIv05isCk2A51kwVcjbaKpZYOfWDWDPoGy17nIU+3oj8Jzvhr1JJ
 ynDIJJs0eyYHa+OewXXL9e/RnO22LSFXvUAiGuvKr8Ch9ixyx0sGFAjlWt5RPiXIoF2u
 h76V5+uLBtPBnfE3GurubmplXho7srTPqS5l7zvFbuKVZ3xJA/hJ0Qo0KbE2sQdGgFzv
 PknCQTSUeYQzrQ0wQ5xmTCJ7sf8uuttuxQiC4rOd3sxsVD9DjMT1oWumI03hueP8bcND
 VhrqJu7R+uUNQYi2KUCgdqR0s56PJM+oy9S0nlJiCsdyBMLsPOQxJkZh/W7AonQelfw/
 nUig==
X-Gm-Message-State: AOAM531NvjBCqYxldOsKCSET6oiVaN9JKavpZ7AryMP2H65GPqKLHXJh
 P8jkSoJuq6HMRUbCrZ4wLkA=
X-Google-Smtp-Source: ABdhPJx1V2gD2Zh/g9vSl2TlbwK/2IUdNqZeGbq6SyVxCfhg7AYOb4RmbSYhkOf48WpzRbDFW0e3YQ==
X-Received: by 2002:a17:906:154c:b0:6ce:21d7:2826 with SMTP id
 c12-20020a170906154c00b006ce21d72826mr9312950ejd.9.1645264837397; 
 Sat, 19 Feb 2022 02:00:37 -0800 (PST)
Received: from skbuf ([188.27.184.105])
 by smtp.gmail.com with ESMTPSA id b20sm5824839ede.23.2022.02.19.02.00.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Feb 2022 02:00:36 -0800 (PST)
Date: Sat, 19 Feb 2022 12:00:34 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220219100034.lh343dkmc4fbiad3@skbuf>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-5-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220218155148.2329797-5-schultz.hans+netdev@gmail.com>
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Stephen Suryaputra <ssuryaextr@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 4/5] net: dsa: mv88e6xxx: Add
 support for bridge port locked mode
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

On Fri, Feb 18, 2022 at 04:51:47PM +0100, Hans Schultz wrote:
> diff --git a/drivers/net/dsa/mv88e6xxx/port.c b/drivers/net/dsa/mv88e6xxx/port.c
> index ab41619a809b..46b7381899a0 100644
> --- a/drivers/net/dsa/mv88e6xxx/port.c
> +++ b/drivers/net/dsa/mv88e6xxx/port.c
> @@ -1234,6 +1234,39 @@ int mv88e6xxx_port_set_mirror(struct mv88e6xxx_chip *chip, int port,
>  	return err;
>  }
>  
> +int mv88e6xxx_port_set_lock(struct mv88e6xxx_chip *chip, int port,
> +			    bool locked)
> +{
> +	u16 reg;
> +	int err;
> +
> +	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg);
> +	if (err)
> +		return err;
> +
> +	reg &= ~MV88E6XXX_PORT_CTL0_SA_FILT_MASK;
> +	if (locked)
> +		reg |= MV88E6XXX_PORT_CTL0_SA_FILT_DROP_ON_LOCK;
> +
> +	err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL0, reg);
> +	if (err)
> +		return err;
> +
> +	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_ASSOC_VECTOR, &reg);
> +	if (err)
> +		return err;
> +
> +	reg &= ~MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
> +	if (locked)
> +		reg |= MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT;
> +
> +	err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_ASSOC_VECTOR, reg);

	return mv88e6xxx_port_write(...);

> +	if (err)
> +		return err;
> +
> +	return 0;
> +}
